'use strict';

function createConsoleLogger() {
    return {
        info: console.log,
        error: console.error,
        warn: console.warn
    }
}

exports.createConsoleLogger = createConsoleLogger;

