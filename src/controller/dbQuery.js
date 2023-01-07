const express = require('express');
const bodyParser = require('body-parser');
const db = require('./dbConnector');
const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


async function getAllInfo(req) {
	try {
		results = await db.id('SELECT * FROM info WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getAllFeatures(req) {
	try {
		results = await db.id('SELECT * FROM features WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getConcatFeatures(req) {
	try {
		results = await db.id(
			'SELECT features_concat FROM features WHERE product_code = ?',
			[req.params.product_code]
		);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getAV(req) {
	try {
		results = await db.id('SELECT * FROM av WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getMovement(req) {
	try {
		results = await db.id('SELECT * FROM `pan_tilt` WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getPhysical(req) {
	try {
		results = await db.id('SELECT * FROM physical WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getPower(req) {
	try {
		results = await db.id('SELECT * FROM `power_conn` WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getCerts(req) {
	try {
		results = await db.id('SELECT * FROM `certification` WHERE product_code = ?', [
			req.params.product_code
		]);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}

async function getData(sqlQuery,params) {
	try {
		let results = await db.id(sqlQuery, params);
		return results;
	} catch (e) {
		console.log(e);
		const status = 500;
		return status;
	}
}



async function genericQuery(sqlQuery) {
	try {
		let results = await db.all(sqlQuery);
		return results;
	} catch (e) {
		return console.log(e);
	}
}


module.exports = {
	getAllInfo,
	getAllFeatures,
	getAV,
	getMovement,
	getConcatFeatures,
	getPhysical,
	getPower,
	getCerts,
	genericQuery,
	getData
};
