const express = require('express');
var router = express.Router();

router.use(function timeLog(req, res, next) {
	console.log('Time: ', Date.now());
	next();
});

router.get('/', (req, res) => {
	res.render('index.ejs');
});

router.get('/layout', (req, res) => {
	res.render('layout');
});

router.get('/docker-test', (req, res) => {
	res.send('<h1>WORKING  </h1>');
});

router.get('/about', (req, res) => {
	res.render('about');
});

router.get('/marine', (req, res) => {
	res.render('marine');
});

router.get('/law-enforcement', (req, res) => {
	res.render('law');
});

router.get('/parking', (req, res) => {
	res.render('parking');
});

router.get('/security', (req, res) => {
	res.render('security');
});

router.get('/product-category', (req, res) => {
	res.render('product-category');
});

// CCTV categories
//
//
//

router.get('/products/cctv', (req, res) => {
	res.render('cctv');
});

router.get('/products/cctv/cameras', (req, res) => {
	res.render('cameras');
});

router.get('/products/cctv/camera-housings', (req, res) => {
	res.render('camera-housings');
});

router.get('/products/cctv/cctv-transmission', (req, res) => {
	res.render('cctv-transmission');
});

router.get('/products/cctv/cctv-recording', (req, res) => {
	res.render('cctv-recording');
});

router.get('/products/cctv/cctv-analytics', (req, res) => {
	res.render('cctv-analytics');
});

router.get('/products/cctv/cctv-ancillaries', (req, res) => {
	res.render('cctv-ancillaries');
});

router.get('/products/cctv/security-management-software', (req, res) => {
	res.render('management-software');
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

router.get('/products/cctv/cameras/', (req, res) => {
	res.render('cameras');
});

router.get('/products/cctv/cameras/prison-cell', (req, res) => {
	res.render('prison-cell');
});

router.get('/products/cctv/cameras/marine-cameras', (req, res) => {
	res.render('marine-cameras');
});

router.get('/products/cctv/cameras/hazardous-enviornment', (req, res) => {
	res.render('hazardous-environment');
});

router.get('/products/cctv/cameras/thermal-cameras', (req, res) => {
	res.render('thermal-cameras');
});

router.get('/products/cctv/cameras/commercial', (req, res) => {
	res.render('commercial-cameras');
});

//
//
//
//

router.get('/products/camera-collection', (req, res) => {
	res.render('cameras-collection');
});

router.get('/products/access-control', (req, res) => {
	res.render('access');
});

// READERS COLLECTION
router.get('/products/access-control/readers', (req, res) => {
	res.render('readers-collection');
});

// READERS CATERGORY PAGES
router.get('/products/access-control/readers/proximity-readers', (req, res) => {
	res.render('proximity-readers');
});

router.get('/products/access-control/readers/qr', (req, res) => {
	res.render('qr-readers');
});

router.get('/products/access-control/readers/bluetooth-readers', (req, res) => {
	res.render('bluetooth-readers');
});

router.get('/products/access-control/readers/poe-readers', (req, res) => {
	res.render('poe-readers');
});

router.get('/products/access-control/readers/fingerprint-readers', (req, res) => {
	res.render('fingerprint-readers');
});

router.get('/products/access-control/readers/pin-keypad-readers', (req, res) => {
	res.render('pin-keypad-readers');
});

router.get(
	'/products/access-control/readers/universal-proximity-readers',
	(req, res) => {
		res.render('universal-proximity');
	}
);

router.get(
	'/products/access-control/readers/facial-recognition-readers',
	(req, res) => {
		res.render('facial-recognition-readers');
	}
);

router.get('/products/access-control/door-controllers', (req, res) => {
	res.render('door-controllers-collection');
});

router.get('/products/access-control/wireless-locks', (req, res) => {
	res.render('wireless-locks');
});

// router.get('/products/access-control/wireless-locks', (req, res) => {
// 	res.render('wireless-locks');
// });

router.get('/products/access-control/access-control-software', (req, res) => {
	res.render('access-control-software-collection');
});

router.get('/products/access-control/anpr', (req, res) => {
	res.render('anpr');
});

router.get('/products/access-control/anpr/anpr-cameras', (req, res) => {
	res.render('anpr-cameras');
});

router.get('/products/access-control/anpr/anpr-software', (req, res) => {
	res.render('anpr-software');
});

router.get('/products/access-control/anpr/anpr-signage', (req, res) => {
	res.render('anpr-signage');
});

router.get('/products/access-control/anpr/vehicle-counting', (req, res) => {
	res.render('vehicle-counting');
});

router.get('/products/interview-recorders', (req, res) => {
	res.render('interview-recorders');
});

router.get('/products/visitor-management', (req, res) => {
	res.render('visitor-management');
});

router.get('/products/panic-alarms', (req, res) => {
	res.render('panic-alarms');
});

router.get('/contact', (req, res) => {
	res.render('contact');
});

router.get('/frequently-asked', (req, res) => {
	res.render('faq');
});

router.get('/sell', (req, res) => {
	res.render('sell');
});

router.get('/terms-conditions', (req, res) => {
	res.render('terms');
});

router.get('/services', (req, res) => {
	res.render('services-collection');
});

router.get('/services/system-design', (req, res) => {
	res.render('system-design-build');
});

router.get('/services/service-support', (req, res) => {
	res.render('service-support');
});

router.get('/services/installations', (req, res) => {
	res.render('installations');
});

router.get('/services/cctv-alarm-monitoring', (req, res) => {
	res.render('cctv-alarm-monitoring');
});

router.get('/services/training', (req, res) => {
	res.render('training');
});

router.get('/services/consultancy', (req, res) => {
	res.render('consultancy');
});

router.get('/services/risk', (req, res) => {
	res.render('risk-assessment');
});

router.get('/services/risk/security-risk', (req, res) => {
	res.render('security-risk');
});

router.get('/services/risk/fire-risk', (req, res) => {
	res.render('fire-risk');
});

router.get('/services/site-maintenance', (req, res) => {
	res.render('site-maintenance');
});

// resources routes

router.get('/resources', (req, res) => {
	res.render('resources');
});

router.get('/resources/datasheets', (req, res) => {
	res.render('datasheets');
});

router.get('/resources/gallery', (req, res) => {
	res.render('gallery');
});

router.get('/resources/knowledge', (req, res) => {
	res.render('knowledge-centre');
});

router.get('/resources/tools', (req, res) => {
	res.render('tools');
});

router.get('/resources/press', (req, res) => {
	res.render('press');
});

module.exports = AllOtherRouter;
