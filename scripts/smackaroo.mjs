import { execSync } from 'node:child_process';
import { existsSync, readFileSync, writeFileSync } from 'node:fs';

const undname = 'K:/VS2022/VC/Tools/MSVC/14.36.32532/bin/Hostx86/x86/undname.exe';

const classes = {
    'GeometryDash.bro': {},
    'Cocos2d.bro': {},
};

function formatSig(sig) {
    return sig
        .replace(/__thiscall |__cdecl /g, '')
        .replace(/public: |private: |protected: /g, '')
        .replace(/enum |class |struct /g, '')
        .replace(/\(void\)/, '()')
        .replace(/ &/g, '&')
        .replace(/ \*/g, '*')
        .replace(/\)const /g, ') const')
        .replace(/,(?!\s)/g, ', ')
        .replace(
            /std::set<(.*?), std::less<(.*?)>, std::allocator<(.*?)> >/g,
            v => `gd::set<${v.match(/(?<=std::set<)(.*?)(?=,)/)[0]}>`
        )
        .replace(
            /std::vector<(.*?), std::allocator<(.*?)> >/g,
            v => `gd::vector<${v.match(/(?<=std::vector<)(.*?)(?=,)/)[0]}>`
        )
        .replace(/std::_Tree_const_iterator<std::_Tree_val<std::_Tree_simple_types<cocos2d::CCObject\*> > >/g, 'cocos2d::CCSetIterator')
        .replace(
            /std::map<(.*?), (.*?), std::less<(.*?)>, std::allocator<std::pair<(.*?), (.*?)> > >/g,
            v => {
                const m = v.match(/(?<=std::map<)(.*?),(.*?)(?=,)/);
                return `gd::map<${m[1]},${m[2]}>`;
            }
        )
        .replace(
            /std::unordered_map<(.*?), std::pair<double, double>, .*?> > > >/g,
            v => {
                const m = v.match(/(?<=std::unordered_map<)(.*?)(?=,)/);
                return `gd::unordered_map<${m[1]}, std::pair<double, double>>`;
            }
        )
        .replace(
            /std::unordered_map<(.*?), (.*?), .*?> > >/g,
            v => {
                const m = v.match(/(?<=std::unordered_map<)(.*?),(.*?)(?=,)/);
                return `gd::unordered_map<${m[1]},${m[2]}>`;
            }
        )
        .replace(/std::basic_string<char, std::char_traits<char>, std::allocator<char> >/g, 'gd::string')
        .replace(/std::string/g, 'gd::string')
        .replace(/unsigned long long/g, 'uint64_t')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_MenuHandler')
        .replace(/void \(cocos2d::CCObject::\*\)\(\)/g, 'cocos2d::SEL_CallFunc')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCNode\*\)/g, 'cocos2d::SEL_CallFuncN')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCNode\*, void\*\)/g, 'cocos2d::SEL_CallFuncND')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_CallFuncO')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCEvent\*\)/g, 'cocos2d::SEL_EventHandler')
        .replace(/int \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_Compare')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::extension::CCHttpClient\*, cocos2d::extension::CCHttpResponse\*\)/g, 'cocos2d::SEL_HttpResponse')
        .replace(/void \(cocos2d::CCObject::\*\)\(float\)/g, 'cocos2d::SEL_SCHEDULE');
}

if (!existsSync('dsymc.txt')) {
    console.log('Demangling Cocos symbols from symc.txt...');
    writeFileSync('dsymc.txt',
        readFileSync('symc.txt').toString()
            .split('\n')
            .map((line, i, lines) => {
                const res = execSync(`${undname} ${line}`).toString().match(/is :- \"(.*)\"/)[1];
                process.stdout.clearLine();
                process.stdout.cursorTo(0);
                process.stdout.write(`Demangled ${i}/${lines.length}`);
                return res;
            })
            .join('\n')
    );
    process.stdout.write('\n');
}

console.log('Loading Cocos symbols from symc.txt...');
readFileSync('dsymc.txt').toString()
    .split('\n')
    .filter(line => !line.match(/(vtable|getClassTypeInfo)/))
    .filter(line => line.match(/__thiscall|__cdecl/))
    .map(line => line.match(/(?<=__thiscall\s+|__cdecl\s+)(.+)(?=::\w+\()/))
    .filter(line => line)
    .forEach(sym => {
        const cls = sym[0];
        const fun = formatSig(sym.input.replace(new RegExp(`(?<=(__thiscall|__cdecl).+?)${cls}::`), ''));
        if (!cls.match(/^(fmt|tinyxml2)/)) {
            if (!(cls in classes['Cocos2d.bro'])) {
                classes['Cocos2d.bro'][cls] = new Set();
            }
            classes['Cocos2d.bro'][cls].add(fun);
        }
    });

console.log('Loading GD symbols from sym.txt...');
readFileSync('sym.txt').toString()
    .split('\n')
    .filter(line => line.includes('::') && !line.match(/(typeinfo|vtable|thunk)/))
    .map(line => line.match(/((\w+::)*\w+)::([\w~]+\(.*\))/)?.slice(1).filter(a => a && !a.endsWith('::')))
    .filter(line => line && !line[0].match(/^(_JNIEnv|internal|tinyxml2|cocos2d|DS_Dictionary|pugi|__cxx|__gnu_cxx|std|fmt|llvm|FMOD|tk::spline)/))
    .forEach(([cls, fun]) => {
        if (!(cls in classes['Cocos2d.bro'])) {
            if (!(cls in classes['GeometryDash.bro'])) {
                classes['GeometryDash.bro'][cls] = new Set();
            }
            classes['GeometryDash.bro'][cls].add(formatSig(fun));
        }
    });

console.log('Writing results...');
const res = {
    'Cocos2d.bro': '// clang-format off\n',
    'GeometryDash.bro': `// clang-format off

class GDString {
    // void winDtor() = win 0xf6e0;
    // GDString& winAssign(GDString const&, size_t, size_t) = win 0xf720;
    // GDString& winAssign(char const*) = win 0xf680;
    // GDString& winAssign(char const*, size_t) = win 0xf840;

    // static uintptr_t macEmptyContainer() {
        // return geode::base::get() + 0x6030d0;
    // }
    // void macCtor(char const*) = mac 0x489fc0;
    // void macCtor(GDString const&) = mac 0x489fcc;
    // GDString& macAssign(char const*) = mac 0x489f96;
    // GDString& macAssign(GDString const&) = mac 0x489f9c;
    // void macDestroy() = mac 0x489f78;
}
`,
};

function commentOutFunctions(className, name) {
    // variadic
    if (
        name.includes('...') ||
        name.startsWith(`${className.substring(className.indexOf('::') + 2)}()`) ||
        name.startsWith(`${className.substring(className.indexOf('::') + 2)}(${className} const&)`)
    ) {
        return `// ${name}`;
    }
    return name;
}

Object.entries(classes['Cocos2d.bro']).forEach(([name, funs]) => {
    res['Cocos2d.bro'] += `
[[link(win, android)]]
class ${name} {
${Array.from(funs).map(fun => `\t${commentOutFunctions(name, fun)};`).join('\n')}
}
`;
});

/**
 * @param {string} className 
 * @param {string} name 
 */
function bestEffortSigGuess(className, name) {
    // certain ones

    // ctor and dtor
    if (name.startsWith(`${className}(`) || name.startsWith('~')) {
        return name;
    }
    // cocos virtuals
    const cocos = res['Cocos2d.bro'].match(new RegExp(`virtual [a-z]+ ${name.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}`, 'gm'));
    if (cocos) {
        return `${cocos[0]}`;
    }

    // very good guesses

    // create functions
    if (name.startsWith('create(')) {
        return `static ${className}* ${name}`;
    }
    // init
    if (name.startsWith('init(')) {
        return `bool ${name}`;
    }
    // callbacks
    if (name.match(/^on[\w]+\(cocos2d::CCObject\*\)/)) {
        return `void ${name.substring(0, name.indexOf('('))}(cocos2d::CCObject* sender)`;
    }

    // good guesses

    if (name.match(/^set[A-Z]/)) {
        return `/* unverified signature */\n\tvoid ${name}`;
    }
    if (name.match(/^is[A-Z]/)) {
        return `/* unverified signature */\n\tbool ${name}`;
    }

    return `TodoReturn ${name}`;
}

Object.entries(classes['GeometryDash.bro']).forEach(([name, funs]) => {
    if (!res['Cocos2d.bro'].includes(`class ${name}`)) {
        res['GeometryDash.bro'] += `
[[link(android)]]
class ${name} {
${Array.from(funs).map(fun => `\t${commentOutFunctions(name, bestEffortSigGuess(name, fun))};`).join('\n')}
}
`;
    }
});

Object.entries(res).forEach(([file, data]) => writeFileSync(`bindings/2.2/${file}`, data));
