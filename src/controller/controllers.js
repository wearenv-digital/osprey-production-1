const express = require('express');
const bodyParser = require('body-parser');
// var util = require('util');
// const logger = require('../services/logger');
const db = require('./dbConnector');
const { json } = require('body-parser');
const { response } = require('express');
const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

function removeProdCode(arr) {
	arr = arr.filter(item => !item.length < 1);
	arr = arr.slice(1, arr.length);
	return arr;
}

function removeFirst(obj) {
	delete obj[0].product_code;
	return obj;
}

function removeProductCode(obj) {
	delete obj['product_code'];
	return obj;
}

function removeProp(obj,key) {
	delete obj[0][key];
	return obj;
}

function filterDead(obj) {
	deadKeys = Object.keys(obj).filter(
		k => obj[k] === 'n/a' || obj[k] === '*' || obj[k] === ''
	);
	return deadKeys;
}

function filterGoodVals(obj) {
	goodVals = Object.values(obj).filter(
		k => obj[k] !== 'n/a' || obj[k] !== '*' || obj[k] !== ''
	);
	return goodVals;
}

function listAllKeys(obj) {
	allKeys = Object.keys(obj);
	return allKeys;
}

function listAllVals(obj) {
	allVals = Object.values(obj);
	return allVals;
}

function finalObjCreator(newKeys, newVals) {
	var obj = {};
	obj = newKeys.forEach((key, index) => {
		obj[key] = newVals[index];
	});
	return obj;
}

// THIS WORKS
async function getAll(query) {
	try {
		let results = await db.all();
		return results;
	} catch (e) {
		console.log(e);
	}
}

// var camInfo = {};
// var camSpecs = {};
// var audioVideo = {};
// var automation = {};
// var elecPhys = {};

async function getNames() {
	try {
		let results = await db.all('SELECT product_name, product_code FROM cam_info;');
		return results;
	} catch (e) {
		return console.log(e);
	}
}

async function getNamesQuery(sqlQuery) {
	try {
		let results = await db.all(sqlQuery);
		return results;
	} catch (e) {
		return console.log(e);
	}
}

// THIS NEEDS WORK

async function getDesc(req) {
	try {
		results = await db.id(
			'SELECT description FROM cam_info WHERE product_code = ?',
			[req.params.product_code]
		);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getFeatures(req) {
	try {
		results = await db.id('SELECT * FROM cam_features WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getInfo(req) {
	try {
		results = await db.id('SELECT * FROM cam_info WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getCamSpecs(req) {
	try {
		results = await db.id('SELECT * FROM cam_specs WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getAudioVideo(req) {
	try {
		results = await db.id('SELECT * FROM audio_video WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getAutomation(req) {
	try {
		results = await db.id('SELECT * FROM automation WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getElecPhys(req) {
	try {
		results = await db.id(
			'SELECT * FROM electrical_physical WHERE product_code = ?',
			[req.params.product_code]
		);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

module.exports = {
	removeFirst,
	removeProdCode,
	removeProductCode,
	removeProp,
	finalObjCreator,
	filterDead,
	filterGoodVals,
	listAllKeys,
	listAllVals,
	getAll,
	getDesc,
	getFeatures,
	getInfo,
	getCamSpecs,
	getAudioVideo,
	getAutomation,
	getElecPhys,
	getNames,
	getNamesQuery
};
