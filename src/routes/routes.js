const express = require('express');
const controllers = require('../controller/controllers');
var breadcrumbs = require('../controller/breadcrumbs');
const breadcrumbSplit = require('../controller/breadcrumbSplit');
const router = express.Router();

router.use(function timeLog(req, res, next) {
	console.log('Time: ', Date.now());
	next();
});

////////////////////////////////////////////

router.get('/', breadcrumbs.Middleware(), (req, res) => {
	res.render('index', { breadcrumbs: req.breadcrumbs });
});

router.get('/product-page', async (req, res) => {
	try {
		let results = await controllers.getAll();
		res.json(results);
	} catch (e) {
		console.log(e);
		return res.sendStatus(500);
	}
});

router.get(
	'/product-page/:product_code',
	breadcrumbs.Middleware(),
	async (req, res) => {
		try {
			var camInfo = {};
			var camFeatures = {};
			var camSpecs = {};
			var audioVideo = {};
			var automation = {};
			var elecPhys = {};
			var description = {};

			camInfo = await controllers.getInfo(req);
			camFeatures = await controllers.getFeatures(req);
			camSpecs = await controllers.getCamSpecs(req);
			audioVideo = await controllers.getAudioVideo(req);
			automation = await controllers.getAutomation(req);
			elecPhys = await controllers.getElecPhys(req);
			description = await controllers.getDesc(req);

			camFeatures = controllers.removeFirst(camFeatures);
			camSpecs = controllers.removeFirst(camSpecs);
			audioVideo = controllers.removeFirst(audioVideo);
			automation = controllers.removeFirst(automation);
			elecPhys = controllers.removeFirst(elecPhys);

			var description = description[0];
			camInfo = camInfo[0];
			camFeatures = camFeatures[0];
			camSpecs = camSpecs[0];
			audioVideo = audioVideo[0];
			automation = automation[0];
			elecPhys = elecPhys[0];

			var allInfoKeys = controllers.listAllKeys(camInfo);
			var allFeatureKeys = controllers.listAllKeys(camFeatures);
			var allAvKeys = controllers.listAllKeys(audioVideo);
			var allSpecsKeys = controllers.listAllKeys(camSpecs);
			var allAutoKeys = controllers.listAllKeys(automation);
			var allElecKeys = controllers.listAllKeys(elecPhys);

			var deadInfoKeys = controllers.filterDead(camInfo);
			var deadFeaturekeys = controllers.filterDead(camFeatures);
			var deadSpecsKeys = controllers.filterDead(camSpecs);
			var deadAvKeys = controllers.filterDead(audioVideo);
			var deadAutoKeys = controllers.filterDead(automation);
			var deadElecKeys = controllers.filterDead(elecPhys);

			var allInfoVals = controllers.listAllVals(camInfo);
			var allFeaturesVals = controllers.listAllVals(camFeatures);
			var allSpecsVals = controllers.listAllVals(camSpecs);
			var allAvVals = controllers.listAllVals(audioVideo);
			var allAutoVals = controllers.listAllVals(automation);
			var allElecVals = controllers.listAllVals(elecPhys);

			var newInfoKeys = [];
			var newFeaturesKeys = [];
			var newSpecsKeys = [];
			var newAvKeys = [];
			var newAutoKeys = [];
			var newElecKeys = [];

			newInfoKeys = allInfoKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadInfoKeys.length; i++) {
					if (value === deadInfoKeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newFeaturesKeys = allFeatureKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadFeaturekeys.length; i++) {
					if (value === deadFeaturekeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newSpecsKeys = allSpecsKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadSpecsKeys.length; i++) {
					if (value === deadSpecsKeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newAvKeys = allAvKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadAvKeys.length; i++) {
					if (value === deadAvKeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newAutoKeys = allAutoKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadAutoKeys.length; i++) {
					if (value === deadAutoKeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newElecKeys = allElecKeys.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadElecKeys.length; i++) {
					if (value === deadElecKeys[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			var newInfoVals = [];
			var newFeaturesVals = [];
			var newSpecsVals = [];
			var newAvVals = [];
			var newAutoVals = [];
			var newElecVals = [];
			const deadVals = ['*', 'n/a', ''];

			newInfoVals = allInfoVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			newFeaturesVals = allFeaturesVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			// Get good specs values by comparing to deadVals
			newSpecsVals = allSpecsVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			// get good AV Values by comparing to deadVal

			newAvVals = allAvVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			// Get good automation values by cmparing to deadVals

			newAutoVals = allAutoVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			// Get good ElecPhys values by comparing to deadVals

			newElecVals = allElecVals.reduce(function (prev, value) {
				var isDuplicate = false;
				for (var i = 0; i < deadVals.length; i++) {
					if (value === deadVals[i]) {
						isDuplicate = true;
						break;
					}
				}
				if (!isDuplicate) {
					prev.push(value);
				}
				return prev;
			}, []);

			var finalInfo = {};
			var finalSpecs = {};
			var finalFeatures = {};
			var finalAv = {};
			var finalAutomation = {};
			var finalElecPhys = {};

			function finalObjCreator(newKeys, newVals) {
				var obj = {};
				obj = newKeys.forEach((key, index) => {
					obj[key] = newVals[index];
				});
				return obj;
			}
			// Object.fromEntries(arr1.map((a, i) => [a, arr2[i]]));

			finalAv = Object.fromEntries(newAvKeys.map((a, i) => [a, newAvVals[i]]));
			finalSpecs = Object.fromEntries(
				newSpecsKeys.map((a, i) => [a, newSpecsVals[i]])
			);
			finalFeatures = Object.fromEntries(
				newFeaturesKeys.map((a, i) => [a, newFeaturesVals[i]])
			);
			finalInfo = Object.fromEntries(
				newInfoKeys.map((a, i) => [a, newInfoVals[i]])
			);
			finalAutomation = Object.fromEntries(
				newAutoKeys.map((a, i) => [a, newAutoVals[i]])
			);
			finalElecPhys = Object.fromEntries(
				newElecKeys.map((a, i) => [a, newElecVals[i]])
			);

			// res.send(finalElecPhys);
			// res.send(finalAv)
			// res.send(finalSpecs)

			var finalObj = {};

			finalObj.features = finalFeatures;
			finalObj.info = finalInfo;
			finalObj.specs = finalSpecs;
			finalObj.av = finalAv;
			finalObj.automation = finalAutomation;
			finalObj.elecPhys = finalElecPhys;

			// res.send(finalInfo)
			// return;

			var finalArr = [];
			finalArr.push(finalFeatures);
			finalArr.push(finalInfo);
			finalArr.push(finalAv);
			finalArr.push(finalAutomation);
			finalArr.push(finalElecPhys);

			description = Object.values(description);

			var data = {};

			data = {
				features: finalFeatures,
				dataObj: finalObj,
				dataArr: finalArr,
				description: description
			};

			data.product_code = finalObj.info.product_code;
			// res.send(data);
			// return
			res.render('product-page-with-partials', {
				features: newFeaturesVals,
				description: description,
				data: data,
				specs: finalSpecs,
				av: finalAv,
				auto: finalAutomation,
				elecPhys: finalElecPhys,
				info: finalInfo,
				breadcrumbs: req.breadcrumbs
			});
			return;
		} catch (e) {
			console.log(e);
			return res.render('index.ejs');
		}
	}
);

router.get('/layout', (req, res) => {
	res.render('layout');
});

router.get('/docker-test', (req, res) => {
	res.send('<h1>WORKING  </h1>');
});

router.get('/about', breadcrumbs.Middleware(), (req, res) => {
	res.render('about', { breadcrumbs: req.breadcrumbs });
});

router.get('/marine', breadcrumbs.Middleware(), (req, res) => {
	res.render('marine', { breadcrumbs: req.breadcrumbs });
});

router.get('/law-enforcement', (req, res) => {
	res.render('law');
});

router.get('/parking', (req, res) => {
	res.render('parking');
});

router.get('/security', breadcrumbs.Middleware(), (req, res) => {
	res.render('security', { breadcrumbs: req.breadcrumbs });
});

router.get('/hazardous-areas', breadcrumbs.Middleware(), (req, res) => {
	res.render('hazardous-areas', { breadcrumbs: req.breadcrumbs });
});

router.get('/products', breadcrumbs.Middleware(), (req, res) => {
	res.render('product-category', {
		breadcrumbs: req.breadcrumbs
	});
});

// CCTV categories
//
//
//

router.get('/products/cctv', breadcrumbs.Middleware(), (req, res) => {
	res.render('cctv', { breadcrumbs: req.breadcrumbs });
});

router.get('/products/cctv/cameras', breadcrumbs.Middleware(), (req, res) => {
	res.render('cameras', { breadcrumbs: req.breadcrumbs });
});

router.get(
	'/products/cctv/camera-housings',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('camera-housings', { breadcrumbs: req.breadcrumbs });
	}
);

// ////////////////

router.get(
	'/products/cctv/cctv-transmission',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('cctv-transmission', { breadcrumbs: req.breadcrumbs });
	}
);

// ////////////////

router.get(
	'/products/cctv/cctv-recording-analytics',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('cctv-recording', { breadcrumbs: req.breadcrumbs });
	}
);

// router.get('/products/cctv/cctv-analytics', (req, res) => {
// 	res.render('cctv-analytics');
// });

router.get(
	'/products/cctv/cctv-ancillaries',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('cctv-ancillaries', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/cctv/security-management-software',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('management-software', { breadcrumbs: req.breadcrumbs });
	}
);

//  Marine Category Route

router.get('/marine-categories', breadcrumbs.Middleware(), (req, res) => {
	res.render('marine-categories', { breadcrumbs: req.breadcrumbs });
});

//
//
//
//
// camera categories routes
//
//
//
//
//

router.get('/products/cctv/cameras/', breadcrumbs.Middleware(), (req, res) => {
	res.render('cameras', { breadcrumbs: req.breadcrumbs });
});

router.get(
	'/products/cctv/cameras/prison-cell',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('prison-cell', { breadcrumbs: req.breadcrumbs });
	}
);

// Marine Camera Product Route
router.get(
	'/products/cctv/cameras/marine-cameras',
	breadcrumbs.Middleware(),
	async (req, res) => {
		try {
			var data = {};
			var sqlQuery =
				'SELECT product_name, product_code, image_link FROM cam_info WHERE category = "marine" ';
			data = await controllers.getNamesQuery(sqlQuery);
		} catch (error) {
			consolee.log(error);
		}

		res.render('marine-cameras', {
			data: data,
			breadcrumbs: req.breadcrumbs
		});
	}
);

router.get(
	'/products/cctv/cameras/hazardous-environment',
	breadcrumbs.Middleware(),
	async (req, res) => {
		try {
			var data = {};
			var sqlQuery =
				'SELECT product_name, product_code, image_link FROM cam_info WHERE category = "hazard" ';
			data = await controllers.getNamesQuery(sqlQuery);
		} catch (error) {
			consolee.log(error);
		}

		res.render('hazardous-areas', {
			data: data,
			breadcrumbs: req.breadcrumbs
		});
	}
);

router.get(
	'/products/cctv/cameras/thermal-cameras',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('thermal-cameras', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/cctv/cameras/commercial',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('commercial-cameras', { breadcrumbs: req.breadcrumbs });
	}
);

//
//
//
//

router.get('/products/camera-collection', breadcrumbs.Middleware(), (req, res) => {
	res.render('cameras-collection', { breadcrumbs: req.breadcrumbs });
});

router.get('/products/access-control', breadcrumbs.Middleware(), (req, res) => {
	res.render('access', { breadcrumbs: req.breadcrumbs });
});

// READERS COLLECTION
router.get(
	'/products/access-control/readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('readers-collection', { breadcrumbs: req.breadcrumbs });
	}
);

// READERS CATERGORY PAGES
router.get(
	'/products/access-control/readers/proximity-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('proximity-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/qr',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('qr-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/bluetooth-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('bluetooth-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/poe-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('poe-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/fingerprint-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('fingerprint-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/pin-keypad-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('pin-keypad-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/universal-proximity-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('universal-proximity', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/readers/facial-recognition-readers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('facial-recognition-readers', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/door-controllers',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('door-controllers-collection', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/wireless-locks',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('wireless-locks', { breadcrumbs: req.breadcrumbs });
	}
);

// router.get('/products/access-control/wireless-locks', (req, res) => {
// 	res.render('wireless-locks');
// });

router.get(
	'/products/access-control/access-control-software',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('access-control-software-collection', {
			breadcrumbs: req.breadcrumbs
		});
	}
);

router.get(
	'/products/access-control/anpr',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('anpr', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/anpr/anpr-cameras',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('anpr-cameras', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/anpr/anpr-software',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('anpr-software', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/anpr/anpr-signage',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('anpr-signage', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/access-control/anpr/vehicle-counting',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('vehicle-counting', { breadcrumbs: req.breadcrumbs });
	}
);

router.get(
	'/products/interview-recorders',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('interview-recorders', { breadcrumbs: req.breadcrumbs });
	}
);

router.get('/products/visitor-management', breadcrumbs.Middleware(), (req, res) => {
	res.render('visitor-management', { breadcrumbs: req.breadcrumbs });
});

router.get('/products/panic-alarms', breadcrumbs.Middleware(), (req, res) => {
	res.render('panic-alarms', { breadcrumbs: req.breadcrumbs });
});

router.get('/contact', breadcrumbs.Middleware(), (req, res) => {
	res.render('contact', { breadcrumbs: req.breadcrumbs });
});

router.get('/frequently-asked', breadcrumbs.Middleware(), (req, res) => {
	res.render('faq', { breadcrumbs: req.breadcrumbs });
});

router.get('/sell', breadcrumbs.Middleware(), (req, res) => {
	res.render('sell', { breadcrumbs: req.breadcrumbs });
});

router.get('/terms-conditions', breadcrumbs.Middleware(), (req, res) => {
	res.render('terms', { breadcrumbs: req.breadcrumbs });
});

router.get('/services', breadcrumbs.Middleware(), (req, res) => {
	res.render('services-collection', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/system-design', breadcrumbs.Middleware(), (req, res) => {
	res.render('system-design-build', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/service-support', breadcrumbs.Middleware(), (req, res) => {
	res.render('service-support', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/installations', breadcrumbs.Middleware(), (req, res) => {
	res.render('installations', { breadcrumbs: req.breadcrumbs });
});

router.get(
	'/services/cctv-alarm-monitoring',
	breadcrumbs.Middleware(),
	(req, res) => {
		res.render('cctv-alarm-monitoring', { breadcrumbs: req.breadcrumbs });
	}
);

router.get('/services/training', breadcrumbs.Middleware(), (req, res) => {
	res.render('training', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/consultancy', breadcrumbs.Middleware(), (req, res) => {
	res.render('consultancy', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/risk', breadcrumbs.Middleware(), (req, res) => {
	res.render('risk-assessment', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/risk/security-risk', breadcrumbs.Middleware(), (req, res) => {
	res.render('security-risk', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/risk/fire-risk', breadcrumbs.Middleware(), (req, res) => {
	res.render('fire-risk', { breadcrumbs: req.breadcrumbs });
});

router.get('/services/site-maintenance', breadcrumbs.Middleware(), (req, res) => {
	res.render('site-maintenance', { breadcrumbs: req.breadcrumbs });
});

// resources routes

router.get('/resources', breadcrumbs.Middleware(), (req, res) => {
	res.render('resources', { breadcrumbs: req.breadcrumbs });
});

router.get('/resources/datasheets', breadcrumbs.Middleware(), (req, res) => {
	res.render('datasheets', { breadcrumbs: req.breadcrumbs });
});

router.get('/resources/gallery', breadcrumbs.Middleware(), (req, res) => {
	res.render('gallery', { breadcrumbs: req.breadcrumbs });
});

router.get('/resources/knowledge', breadcrumbs.Middleware(), (req, res) => {
	res.render('knowledge-centre', { breadcrumbs: req.breadcrumbs });
});

router.get('/resources/tools', breadcrumbs.Middleware(), (req, res) => {
	res.render('tools', { breadcrumbs: req.breadcrumbs });
});

router.get('/resources/press', breadcrumbs.Middleware(), (req, res) => {
	res.render('press', { breadcrumbs: req.breadcrumbs });
});

module.exports = router;
