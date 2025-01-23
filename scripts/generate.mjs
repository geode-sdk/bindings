import { readFileSync, writeFileSync } from 'node:fs';

if (process.argv.length < 4) {
    console.error("usage: node generate.mjs <android symbols> <cocos symbols>");
    process.exit(1);
}

// input is a list of demangled android symbols.
// you can obtain it by using `nm -gDCj libcocos2dcpp.so`
// nm comes from binutils which u can get via scoop on windows
const androidSymbols = readFileSync(process.argv[2]).toString();

// list of cocos symbols already demangled.
// generated with `dumpbin /exports libcocos2d.dll | demumble -m`
const cocosSymbols = readFileSync(process.argv[3]).toString();
const cocosVirtuals = Object.fromEntries(cocosSymbols
    .split('\n')
    .map(x => x.trim())
    .map(cleanFunctionSig)
    .filter(x => x.startsWith('virtual '))
    .map(x => x.substring('virtual '.length))
    .filter(x => !x.match(/(.+?)::~?\1/)) // remove ctors / dtors
    .map(x => x.match(/(.+) (?:\w+::)+(\w+\(.+)/)) // get return type and function name
    .filter(x => x !== null)
    .map(x => [x[2], x[1]])
);

// hardcode a few, because the symbols dont have em
cocosVirtuals['applicationDidFinishLaunching()'] = 'bool';
cocosVirtuals['applicationDidEnterBackground()'] = 'void';
cocosVirtuals['applicationWillEnterForeground()'] = 'void';

// assumes virtuals.json is in the same directory
const virtualsTable = JSON.parse(readFileSync('virtuals.json').toString());
// normalize all the function signatures
for (let name in virtualsTable) {
    virtualsTable[name] = virtualsTable[name].map(arr => arr.map(cleanFunctionSig));
}

const classes = {
    'GeometryDash.bro': {},
};

function cleanFunctionSig(sig) {
    return sig
        .replace(/__thiscall |__cdecl /g, '')
        .replace(/public: |private: |protected: /g, '')
        .replace(/enum |class |struct /g, '')
        .replace(/\(void\)/, '()')
        .replace(/ &/g, '&')
        .replace(/ \*/g, '*')
        .replace(/\)const /g, ') const')
        .replace(/,(?!\s)/g, ', ')
        .replace(/std::basic_string<char, std::char_traits<char>, std::allocator<char> ?>/g, 'gd::string')
        .replace(/std::string/g, 'gd::string')
        .replace(
            /std::set<(.*?), std::less<(.*?)>, std::allocator<(.*?)> ?>/g,
            v => `gd::set<${v.match(/(?<=std::set<)(.*?)(?=,)/)[0]}>`
        )
        .replace(
            /std::vector<(.*?), std::allocator<(.*?)> ?>/g,
            v => `gd::vector<${v.match(/(?<=std::vector<)(.*?)(?=,)/)[0]}>`
        )
        .replace(/std::_Tree_const_iterator<std::_Tree_val<std::_Tree_simple_types<cocos2d::CCObject\*> ?> ?>/g, 'cocos2d::CCSetIterator')
        .replace(
            /std::map<(.*?), (.*?), std::less<(.*?)>, std::allocator<std::pair<(.*?), (.*?)> ?> ?>/g,
            v => {
                const m = v.match(/(?<=std::map<)(.*?),(.*?)(?=,)/);
                return `gd::map<${m[1]},${m[2]}>`;
            }
        )
        .replace(
            /std::unordered_map<(.*?), std::pair<double, double>, .*?> ?> ?> ?>/g,
            v => {
                const m = v.match(/(?<=std::unordered_map<)(.*?)(?=,)/);
                return `gd::unordered_map<${m[1]}, std::pair<double, double>>`;
            }
        )
        .replace(
            /std::unordered_map<(.*?), (.*?), .*?> ?> ?>/g,
            v => {
                const m = v.match(/(?<=std::unordered_map<)(.*?),(.*?)(?=,)/);
                return `gd::unordered_map<${m[1]},${m[2]}>`;
            }
        )
        .replace(/unsigned long long/g, 'uint64_t')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_MenuHandler')
        .replace(/void \(cocos2d::CCObject::\*\)\(\)/g, 'cocos2d::SEL_CallFunc')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCNode\*\)/g, 'cocos2d::SEL_CallFuncN')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCNode\*, void\*\)/g, 'cocos2d::SEL_CallFuncND')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_CallFuncO')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::CCEvent\*\)/g, 'cocos2d::SEL_EventHandler')
        .replace(/int \(cocos2d::CCObject::\*\)\(cocos2d::CCObject\*\)/g, 'cocos2d::SEL_Compare')
        .replace(/void \(cocos2d::CCObject::\*\)\(cocos2d::extension::CCHttpClient\*, cocos2d::extension::CCHttpResponse\*\)/g, 'cocos2d::extension::SEL_HttpResponse')
        .replace(/void \(cocos2d::CCObject::\*\)\(float\)/g, 'cocos2d::SEL_SCHEDULE')
        .replace(/cocos2d::_ccColor3B/g, 'cocos2d::ccColor3B') // cocos devs and their typedef'd structs..
        .replace(/cocos2d::_ccColor4B/g, 'cocos2d::ccColor4B')
        .replace(/cocos2d::_ccColor4F/g, 'cocos2d::ccColor4F')
        .replace(/cocos2d::_ccVertex2F/g, 'cocos2d::_ccVertex2F')
        .replace(/cocos2d::_ccVertex3F/g, 'cocos2d::_ccVertex3F')
        .replace(/cocos2d::_ccHSVValue/g, 'cocos2d::ccHSVValue');
}

const enumClasses = ["SearchType", "GameObjectType", "PulseEffectType", "TouchTriggerType", "PlayerButton", "GhostType", "TableViewCellEditingStyle", "UserListType", "GJErrorCode", "AccountError", "GJSongError", "LikeItemType", "CommentError", "BackupAccountError", "GJMusicAction", "CellAction", "GJActionCommand", "DifficultyIconType", "GauntletType", "GJMPErrorCode", "GJTimedLevelType", "SongSelectType", "AudioTargetType", "FMODReverbPreset", "DemonDifficultyType", "PlayerCollisionDirection", "ChestSpriteState", "FormatterType", "AudioModType", "GJAreaActionType", "SFXTriggerState", "SongTriggerState", "GJGameEvent", "GJSmartDirection", "SmartBlockType", "TouchTriggerControl", "SmartPrefabResult", "AudioSortType", "spriteMode", "GJAssetType", "CommentKeyType", "LevelLeaderboardMode", "StatKey", "TextStyleType", "InputValueType", "GJInputStyle", "GJDifficultyName", "GJFeatureState", "GJKeyGroup", "GJKeyCommand", "SelectSettingType", "gjParticleValue", "ColorSelectType", "AudioGuidelinesType", "SmartBrowseFilter", "GJUITouchEvent", "ObjectScaleType", "SavedActiveObjectState", "SavedSpecialObjectState", "SavedObjectStateRef", "CommentType", "BoomListType", "CurrencySpriteType", "CurrencyRewardType", "MenuAnimationType", "ShopType", "ZLayer", "UpdateResponse", "UnlockType", "SpecialRewardItem", "EditCommand", "PlaybackMode", "SelectArtType", "UndoCommand", "EasingType", "GJDifficulty", "GJLevelType", "GJRewardType", "IconType", "GJChallengeType", "GJScoreType", "LevelLeaderboardType", "GJHttpType", "DialogChatPlacement", "DialogAnimationType", "ComparisonType", "MoveTargetType", "TouchToggleMode", "LeaderboardState", "Speed"];

function shouldKeepSymbol(sym) {
    let keep = sym && sym.includes('::') && !sym.match(/(typeinfo|vtable|thunk|guard variable)/);
    if (!keep) return false;
    let className = sym.split('::')[0];
    keep = !className.match(/^(_JNIEnv|internal|tinyxml2|cocos2d|DS_Dictionary|ObjectDecoder|ObjectDecoderDelegate|pugi|__cxx|__gnu_cxx|std|fmt|llvm|tk|xml_|MD5|rtsha1)/);
    keep = keep && className !== "FMOD" && !sym.startsWith('FMOD_') && className != "tk";
    keep = keep && !enumClasses.includes(className);
    keep = keep && className != "CCContentManager";
    return keep;
}

console.log('Loading GD symbols from sym.txt...');
androidSymbols.split('\n')
    .filter(shouldKeepSymbol)
    .map(line => line.match(/((\w+::)*\w+)::([\w~]+\(.*\))/)?.slice(1).filter(a => a && !a.endsWith('::')))
    .filter(x => x)
    .forEach(([cls, fun]) => {
        if (!(cls in classes['GeometryDash.bro'])) {
            classes['GeometryDash.bro'][cls] = [];
        }
        let funs = classes['GeometryDash.bro'][cls];
        let sig = cleanFunctionSig(fun);
        // skip duplicate dtors
        if (!funs.includes(sig))
            funs.push(sig);
    });

console.log('Writing results...');
const res = {
    'GeometryDash.bro': '// clang-format off\n',
};

// inject pure virtuals into classes
for (let name in virtualsTable) {
    // amazing i know
    if (!shouldKeepSymbol(`${name}::init()`)) continue;
    let tables = virtualsTable[name];
    // ignore duplicates
    let pureVirts = new Set(tables.flat().filter(x => x.startsWith('pure_virtual_')));
    if (pureVirts.size) {
        let funcs = classes['GeometryDash.bro'][name] ?? (classes['GeometryDash.bro'][name] = []);
        funcs.push(...pureVirts);
    }
}

function shouldCommentOutFunction(className, name) {
    let baseClassName = className;
    if (className.includes('::'))
        baseClassName = className.split('::').at(-1);
    return (
        name.includes('...') ||
        name.startsWith(`${baseClassName}()`) ||
        name.startsWith(`${baseClassName}(${className} const&)`) ||
        name.startsWith(`${baseClassName}(${className}&&)`) ||
        name.startsWith(`~${baseClassName}(`) ||
        name.includes('fmt::')
    );
}

function isStaticFunc(className, funcSig) {
    return funcSig.startsWith('create(')
    || className == 'GameToolbox'
    || funcSig == 'sharedState()'
    || funcSig == 'sharedEngine()'
    || funcSig == 'sharedDecoder()'
    || funcSig == 'sharedFontCache()'
    || funcSig == 'sharedSpriteFrameCache()'
}

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

    // very good guesses

    // create functions
    if (name.startsWith('create(')) {
        return `${className}* ${name}`;
    }
    // init
    if (name.startsWith('init(')) {
        return `bool ${name}`;
    }
    // callbacks
    if (name.match(/^on[\w]+\(cocos2d::CCObject\*\)/)) {
        return `void ${name.substring(0, name.indexOf('('))}(cocos2d::CCObject* sender)`;
    }

    // cocos virtuals, risky because we arent even checking the inheritance but :P
    if (isVirtual(className, name) && cocosVirtuals[name]) {
        return `${cocosVirtuals[name]} ${name}`
    }

    if (name.startsWith('shared') && isStaticFunc(className, name)) {
        return `${className}* ${name}`;
    }

    // good guesses

    if (name.match(/^set[A-Z]/)) {
        return `void ${name}`;
    }
    if (name.match(/^is[A-Z]/)) {
        return `bool ${name}`;
    }

    return `TodoReturn ${name}`;
}

function vtableIndexForFunc(name, funcSig) {
    let tables = virtualsTable[name];
    if (!tables) return;
    for (let table of tables) {
        let ind = table.indexOf(funcSig);
        if (ind != -1)
            return ind;
    }
}

function isVirtual(name, funcSig) {
    return vtableIndexForFunc(name, funcSig) !== undefined;
}

function groupForFunction(className, funcSig) {
    // ctor and dtor come first
    if (funcSig.startsWith(`${className}(`) || funcSig.startsWith('~')) {
        return -3;
    }
    if (isStaticFunc(className, funcSig)) {
        return -2;
    }
    let virtIndex = vtableIndexForFunc(className, funcSig);
    if (virtIndex === undefined) {
        // non virts
        return -1;
    } else {
        return [0, virtIndex];
    }
}

function sortFuncFor(getter) {
    return (a, b) => getter(a) - getter(b);
}

function reorderFuncs(className, funcs) {
    let out = {};
    for (let sig of funcs) {
        let index = groupForFunction(className, sig);
        // console.log(className, sig, index);
        let group, order;
        if (index instanceof Array) {
            group = 0;
            order = index[1];
        } else {
            group = index;
            order = 0;
        }
        let arr = out[group] ?? (out[group] = []);
        arr.push([sig, order]);
    }
    return Object.entries(out).sort(sortFuncFor(x => x[0])).map(x => x[1]).map(funcs => {
        // sort by name, and then by order
        return funcs.sort((a, b) => a[0].localeCompare(b[0]))
            .sort(sortFuncFor(x => x[1]))
            .map(x => x[0]);
    });
}

for (let [name, funs] of Object.entries(classes['GeometryDash.bro']).sort((a, b) => a[0].localeCompare(b[0]))) {
    // if (name != 'TableViewDataSource') continue;

    let funcOut = [];
    let funcs = reorderFuncs(name, funs);
    for (let group of funcs) {
        for (let func of group) {
            let fullSig = bestEffortSigGuess(name, func);
            if (isVirtual(name, func)) {
                fullSig = 'virtual ' + fullSig;
            } else if (isStaticFunc(name, func)) {
                fullSig = 'static ' + fullSig;
            }
            if (func.startsWith('pure_virtual_')) {
                fullSig += ' {} // TODO: figure out what function this is';
            } else {
                fullSig += ';';
            }

            if (shouldCommentOutFunction(name, func)) {
                fullSig = '// ' + fullSig;
            }

            funcOut.push('\t' + fullSig);
        }
        funcOut.push('');
    }
    if (funcOut.length)
        funcOut.pop();
    let funcTxt = funcOut.join('\n');
    res['GeometryDash.bro'] += `
[[link(android)]]
class ${name} {
${funcTxt}
}
`;
}

Object.entries(res).forEach(([file, data]) => writeFileSync(`out/${file}`, data));
