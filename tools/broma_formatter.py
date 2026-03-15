#!/usr/bin/env python3
"""
Broma Formatter - A code formatter for Geode's .bro binding files.

This formatter preserves comments and formatting while standardizing:
- Indentation (tabs)
- Spacing around operators
- Address alignment
- Consistent style
- Blank lines between classes

Usage:
    python broma_formatter.py <input.bro> [output.bro]
    python broma_formatter.py --inplace <file.bro>
    python broma_formatter.py --check <file.bro>
    python broma_formatter.py --inplace --recursive .
"""

import re
import sys
import argparse
from pathlib import Path
from typing import List, Optional


class BromaFormatter:
    """Formatter for Broma binding files."""
    
    INDENT = '\t'
    
    def __init__(self, content: str):
        self.content = content
        
    def format(self) -> str:
        """Format the entire file."""
        lines = self.content.split('\n')
        result = []
        i = 0
        
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            
            # Skip empty lines (we'll add them back where appropriate)
            if not stripped:
                i += 1
                continue
            
            # Handle #include statements
            if stripped.startswith('#include'):
                result.append(stripped)
                i += 1
                continue
            
            # Handle class-level attributes like [[link(android)]]
            if stripped.startswith('[[') and stripped.endswith(']]'):
                result.append(stripped)
                i += 1
                continue
            
            # Handle class definitions
            if stripped.startswith('class '):
                # Add blank line before class if there's content before
                if result and not result[-1].startswith('[[') and result[-1].strip():
                    result.append('')
                
                class_result, i = self._format_class(lines, i)
                result.extend(class_result)
                continue
            
            # Default: add line as-is
            result.append(stripped)
            i += 1
        
        # Remove trailing empty lines
        while result and not result[-1].strip():
            result.pop()
        
        return '\n'.join(result)
    
    def _format_class(self, lines: List[str], start_idx: int) -> tuple[List[str], int]:
        """Format a class definition. Returns (formatted_lines, next_index)."""
        result = []
        
        # Class header line
        class_line = lines[start_idx].strip()
        result.append(class_line)
        
        i = start_idx + 1
        if i >= len(lines):
            return result, i
        
        # Check if opening brace is on next line
        if i < len(lines) and lines[i].strip() == '{':
            result.append('{')
            i += 1
        elif '{' in class_line:
            # Opening brace on same line as class
            pass
        
        # Process class body
        brace_depth = 1
        while i < len(lines) and brace_depth > 0:
            line = lines[i]
            stripped = line.strip()
            
            if not stripped:
                i += 1
                continue
            
            # Track braces
            brace_depth += stripped.count('{')
            brace_depth -= stripped.count('}')
            
            if brace_depth <= 0 and stripped == '}':
                result.append('}')
                i += 1
                break
            
            # Handle comments
            if stripped.startswith('//'):
                result.append(self.INDENT + stripped)
                i += 1
                continue
            
            # Format member line
            formatted = self._format_member(stripped)
            if formatted:
                result.append(self.INDENT + formatted)
            
            i += 1
        
        return result, i
    
    def _format_member(self, line: str) -> str:
        """Format a class member or function."""
        # Handle inline comments - preserve them
        comment_match = re.match(r'^(.+?)(\s*//.*)$', line)
        comment = ''
        if comment_match:
            line = comment_match.group(1).strip()
            comment = comment_match.group(2)
        
        # Remove trailing semicolon for processing
        has_semicolon = line.endswith(';')
        if has_semicolon:
            line = line[:-1]
        
        # Format function with addresses
        if ' = ' in line:
            parts = line.rsplit(' = ', 1)
            signature = parts[0].strip()
            addresses = parts[1].strip()
            formatted_addrs = self._format_addresses(addresses)
            result = f"{signature} = {formatted_addrs}"
        else:
            result = line
        
        # Add semicolon and comment back
        if has_semicolon:
            result += ';'
        result += comment
        
        return result
    
    def _format_addresses(self, addr_str: str) -> str:
        """Format address assignments consistently."""
        # Parse comma-separated assignments, respecting template brackets
        assignments = []
        current = ''
        depth = 0
        
        for char in addr_str:
            if char == '<':
                depth += 1
                current += char
            elif char == '>':
                depth -= 1
                current += char
            elif char == ',' and depth == 0:
                if current.strip():
                    assignments.append(current.strip())
                current = ''
            else:
                current += char
        
        if current.strip():
            assignments.append(current.strip())
        
        return ', '.join(assignments)


def format_file(input_path: Path, output_path: Optional[Path] = None, check: bool = False) -> bool:
    """Format a single file."""
    try:
        content = input_path.read_text(encoding='utf-8')
    except Exception as e:
        print(f"Error reading {input_path}: {e}", file=sys.stderr)
        return False
    
    formatter = BromaFormatter(content)
    formatted = formatter.format()
    
    # Ensure file ends with newline
    if formatted and not formatted.endswith('\n'):
        formatted += '\n'
    
    if check:
        # Normalize original for comparison
        original = content
        if original and not original.endswith('\n'):
            original += '\n'
        
        if original != formatted:
            print(f"Would reformat: {input_path}")
            return False
        return True
    
    if output_path:
        try:
            output_path.write_text(formatted, encoding='utf-8')
            print(f"Formatted: {input_path}")
        except Exception as e:
            print(f"Error writing {output_path}: {e}", file=sys.stderr)
            return False
    else:
        print(formatted, end='')
    
    return True


def main():
    parser = argparse.ArgumentParser(
        description='Format Broma binding files (.bro)',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  %(prog)s file.bro                    # Print formatted output to stdout
  %(prog)s input.bro output.bro        # Format to new file
  %(prog)s --inplace file.bro          # Format file in place
  %(prog)s --check file.bro            # Check if file needs formatting
  %(prog)s --inplace --recursive .     # Format all .bro files recursively
        """
    )
    parser.add_argument('input', help='Input .bro file or directory')
    parser.add_argument('output', nargs='?', help='Output file (optional)')
    parser.add_argument('--inplace', '-i', action='store_true', 
                        help='Format files in place')
    parser.add_argument('--check', action='store_true',
                        help='Check if files need formatting (exit code 1 if so)')
    parser.add_argument('--recursive', '-r', action='store_true',
                        help='Process directories recursively')
    
    args = parser.parse_args()
    
    input_path = Path(args.input)
    
    # Handle glob patterns or directories
    files = []
    if '*' in args.input:
        import glob
        files = [Path(f) for f in glob.glob(args.input)]
    elif input_path.is_dir():
        pattern = '**/*.bro' if args.recursive else '*.bro'
        files = list(input_path.glob(pattern))
    else:
        files = [input_path]
    
    if not files:
        print(f"No .bro files found: {args.input}", file=sys.stderr)
        sys.exit(1)
    
    all_good = True
    
    for file_path in files:
        if args.inplace:
            success = format_file(file_path, file_path, args.check)
        elif args.output and len(files) == 1:
            success = format_file(file_path, Path(args.output), args.check)
        else:
            success = format_file(file_path, None, args.check)
        
        if not success:
            all_good = False
    
    if args.check and not all_good:
        sys.exit(1)
    
    if args.inplace and all_good:
        print(f"\nSuccessfully formatted {len(files)} file(s)")


if __name__ == '__main__':
    main()
