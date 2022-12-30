const mysql = require('mysql2');
require('dotenv').config({});
// if (!process.env.NODE_ENV === 'development') { };
// if testing locally on the mac. comment out password line other it forces a password

const pool = mysql.createPool({
	host: process.env.DB_HOST,
	user: process.env.DB_USER,
	password: process.env.DB_PASSWORD,
	database: 'osprey-all',
	connectionLimit: 10
});

let dbResults = {};
// const sqlQuery = `SELECT * FROM cam_info`;

dbResults.all = sqlQuery => {
	return new Promise((resolve, reject) => {
		// const sqlQuery = `SELECT * FROM cam_info`;

		pool.query(sqlQuery, (err, results) => {
			if (err) {
				return reject(err);
			}
			return resolve(results);
		});
	});
};

// LETS TRY AND MAKE THIS REUSABLE
dbResults.id = (sqlQuery, params) => {
	return new Promise((resolve, reject) => {
		pool.query(sqlQuery, params, (err, results) => {
			if (err) {
				return reject(err);
			}
			return resolve(results);
		});
	});
};

// dbResults.id('SELECT * FROM cam_info WHERE product_code =?', [req.params.product_code])

module.exports = dbResults;

// module.exports = pool;
// module.exports = dbConnect;
