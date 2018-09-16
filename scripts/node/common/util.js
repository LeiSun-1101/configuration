'use strict';

const readline = require('readline');

function ask(question) {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
      });
    return new Promise(resolve => {
        rl.question(question, answer => {
            rl.close();
            resolve(answer);
        });
    });
}

exports.ask = ask;