from pathlib import Path

root = Path('.')

inline_dir = root / "bindings" / "2.2091" / "inline"
mapping_dir = root / "bindings" / "include" / "Geode" / "mapping"

mapping_stems = [x.stem for x in mapping_dir.iterdir()]

for inline_class in inline_dir.iterdir():
    inline_str = inline_class.read_text()
    print(f"Handling class {inline_class.stem}")

    if inline_class.stem in mapping_stems:
        inline_str = inline_str.replace("Geode/Bindings.hpp", f"Geode/mapping/{inline_class.stem}.hpp")
    else:
        inline_str = inline_str.replace("Geode/Bindings.hpp", f"Geode/binding/{inline_class.stem}.hpp")

    inline_class.write_text(inline_str)
