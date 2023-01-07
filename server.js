const express = require('express');
require('dotenv').config();
const bodyParser = require('body-parser');
const path = require('path');
const nodemailer = require('nodemailer');
const app = express();

const productRoute = require('./src/routes/prodPageRoutes')

const PORT = process.env.PORT || 3030;

app.set('view engine', 'ejs');
app.set('views', path.resolve('./src/views'));

app.use(bodyParser.json());

const middlewareCheck = (req, res, next) => {
	if (req.method === 'POST') {
		console.log('REQ HOST: ' + req.get('host'));
		console.log('REQ ROUTE:');
		console.log(req.route);
		console.log('REQ BODY:');
		console.log(req.body);
	}
	next();
	if (res.status === 404) {
		console.log('ERROR RESPONSE:');
		console.log(res);
	}
};

app.use('/public', express.static('./src/public'));


app.use(require('./src/routes/routes'));
app.use(require(productRoute));

// const transporter = nodemailer.createTransport({
// 	service: 'smtp.ionos.co.uk',
// 	host: 'smtp.ionos.co.uk',
// 	port: 587,
// 	secure: false,
// 	auth: {
// 		user: '',
// 		pass: ''
// 	}
// });

function sendEmail(req) {
	let transporter = nodemailer.createTransport({
		host: 'smtp.mailtrap.io',
		port: 2525,
		auth: {
			user: '7330c4a50e1274',
			pass: '55b9a417dc916b'
		}
	});
	const mailOptions = {
		from: req.body.email,
		to: 'info@ospreysecurity.co.uk',
		subject: `Message from ${req.body.email} about`,
		text: `Message from: ${req.body.name}.
		Email: ${req.body.email}.
		Tel no: ${req.body.telephone}.
		Message: ${req.body.message}.
		Consent: ${req.body.consent}`
	};
	return transporter.sendMail(mailOptions);
}

app.post('/', async (req, res) => {
	try {
		await sendEmail(req);
		console.log('success with nodemailer');
		res.sendStatus(200);
	} catch (err) {
		console.log('error', err);
		res.send('error');
	}
});

app.listen(PORT, (req, res) => {
	console.log(`server running on port ${PORT}`);
});
