const express = require('express');
require('dotenv').config();
const bodyParser = require('body-parser');
const path = require('path');
const nodemailer = require('nodemailer');
const app = express();

const PORT = process.env.PORT || 3030;

app.set('view engine', 'ejs');
app.set('views', path.resolve('./src/views'));

app.use(bodyParser.json());

app.use('/public', express.static('./src/public'));

app.use(require('./src/routes/routes'));

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

app.post('/', (req, res) => {
	var transporter = nodemailer.createTransport({
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

	console.log(mailOptions);
	transporter.sendMail(mailOptions, (error, info) => {
		if (error) {
			var err = new Error();
			console.log(err.stack);
			// console.log(err.stack);
			res.send('error @ sendMail function');
		} else {
			console.log('Email sent' + info.res);
			res.send('Success');
		}
	});
});

app.listen(PORT, (req, res) => {
	console.log(`server running on port ${PORT}`);
});
