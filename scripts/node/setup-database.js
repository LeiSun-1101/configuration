'use strict';

const chalk = require('chalk');
const table = require('table').table;
const utils = require('./common/util');

const loggerFactory = require('./common/logger-factory.js');

const logger = loggerFactory.createConsoleLogger();

async function collectInfos() {
    const dbType = await utils.ask("Which kind of database do you want: ");
    const db = await utils.ask("What is the database name: ");
    const username = await utils.ask("What is the username: ");
    const password = await utils.ask("What is the password: ");
    const port = await utils.ask("What is the port to be binded: ");

    const infos = {
        "type": dbType,
        "database": db,
        "username": username,
        "password": password,
        "port": port
    };

    const tableFormat = table(Object.entries(infos)
        .map(entry => entry.map(val => chalk.cyan(val))));

    logger.info('\n> Summary');
    logger.info(tableFormat);
    const isOK = await utils.ask("Is it correct?(y/n):");

    if (isOK === 'yes' || isOK === 'y') {
        return infos;
    } else {
        return collectInfos();
    }
}

collectInfos().then(val => console.dir(val));