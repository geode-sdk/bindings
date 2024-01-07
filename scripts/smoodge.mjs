import { readFileSync, writeFile, writeFileSync } from "node:fs";
import { inspect } from "node:util";

function indexOfInBase(bases, a) {
    let b = 0;
    for (let base of bases) {
        const i = base.virtuals.indexOf(a.match(/\w+\(.*?\)/)[0]);
        // console.log(`${a.match(/\w+\(.*?\)/)[0]} -> ${i}`);
        if (i !== -1) {
            return b + i;
        }
        b -= 100;
    }
    return -1;
}

let files = [
    readFileSync('bindings/2.200/GeometryDash-reordered.bro').toString(),
    readFileSync('bindings/2.200/Cocos2d-reordered.bro').toString(),
];

const classes = readFileSync('virtuals.txt')
    .toString()
    .split('\n')
    .filter(line => line.trim())
    .map(line => {
        const [name, bases] = line.split('@');
        return {
            name: name,
            bases: bases.split('%').slice(0, -1).map(base => {
                return { virtuals: base.split('|').slice(0, -1) }
                // const [name, virtuals] = base.split('=');
                // return {
                    // name: name,
                    // virtuals: virtuals.split('|').slice(0, -1)
                // };
            }),
        }
    });

files = files.map(file => {
    return file.replace(/(?<!\/\/ )class (\w+::)*\w+.*?\{.*?\}/gs, value => {
        const [_, name, __, inherit, def] = value.match(/class ((\w+::)*\w+)(.*?)\{(.*?)\}/s);

        if (name === "cocos2d::CCFileUtils") {
            return value;
        }
        // if (!name.match(/CCNode|CCLayer/)) {
            // return value;
        // }

        const c = classes.find(c => c.name === name);
        if (!c) {
            return value;
        }
        
        const order = {
            statics: [],
            init: [],
            getters: [],
            setters: [],
            callbacks: [],
            normals: [],
            virtuals: [],
        };
        def.split('\n').forEach(fun => {
            if (fun.match(/\bvirtual\b/)) { order.virtuals.push(fun); }
            else if (fun.match(/\bstatic\b/)) { order.statics.push(fun); } 
            else if (fun.match(/\bget[A-Z]/)) { order.getters.push(fun); }
            else if (fun.match(/\bset[A-Z]/)) { order.setters.push(fun); }
            else if (fun.match(/\bon[A-Z]/)) { order.callbacks.push(fun); }
            else if (fun.match(/\binit|~/)) { order.init.push(fun); }
            else { order.normals.push(fun); }
        });

        let result = 
            // '\t// Static functions\n' +
            order.statics.join('\n') + '\n\n' +
            // '\t// Initializers & destructors\n' +
            order.init.join('\n') + '\n\n' +
            // '\t// Getters\n' +
            order.getters.join('\n') + '\n\n' + 
            // '\t// Setters\n' +
            order.setters.join('\n') + '\n\n' + 
            // '\t// Callbacks\n' +
            order.callbacks.join('\n') + '\n\n' + 
            // '\t// Member functions\n' +
            order.normals.join('\n') + '\n\n';
        
        order.virtuals.sort((a, b) => indexOfInBase(c.bases, a) - indexOfInBase(c.bases, b));
        // console.log(order.virtuals);

        let got = order.virtuals.slice(0);
        c.bases.forEach(base => {
            // result += `\t// Virtuals\n`;
            order.virtuals
                .filter(v => base.virtuals.find(b => {
                    const m = v.match(new RegExp(`(::|\\s)${b.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}`))
                    // console.log(`${v} => ${m} with ${new RegExp(`(::|\\s)${b.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}`)}`);
                    return m;
                }))
                .forEach(v => {
                    // console.log(`got ${v} for ${name}`);
                    got = got.filter(g => {
                        // console.log(`${g.trim()} === ${v.trim()}`);
                        return g !== v
                    });
                    if (!result.includes(v)) {
                        result += v + "\n";
                    }
                });
            result += "\n";
        });
        if (got.length) {
            console.dir(c.bases, { maxArrayLength: null });
            console.log(order.virtuals);
            throw `${name}: lost ${got.map(g => g.trim())}`
        }

        while (result.includes('\n\n\n')) {
            result = result.replace('\n\n\n', '\n\n');
        }
        
        return `class ${name}${inherit}{\n\t${result.trim()}\n}`;
    });
});

writeFileSync('bindings/2.200/GeometryDash-reordered.bro', files[0]);
writeFileSync('bindings/2.200/Cocos2d-reordered.bro', files[1]);
