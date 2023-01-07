const express = require('express');
const controllers = require('../controller/controllers');
const dbQuery = require('../controller/dbQuery');
var breadcrumbs = require('../controller/breadcrumbs');
const router = express.Router();

router.use(function timeLog(req, res, next) {
	console.log('Time: ', Date.now());
	next();
});

// main product page

// transmission product pages

router.get(
	'/products/cctv/cctv-transmission/:product_code',
	breadcrumbs.Middleware(),
	async (req, res) => {
		let info = await dbQuery.getData(
			'SELECT * FROM `eth_info` WHERE product_code = ?',
			[req.params.product_code]
		);
		let features = await dbQuery.getData(
			'SELECT * FROM `ethernet_features` WHERE product_code = ?',
			[req.params.product_code]
		);
		res.send(features);
		return;
	}
);

module.exports = router;
