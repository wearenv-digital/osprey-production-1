const { info } = require('console');
const fs = require('fs');
const logform = require('logform');
const tripleBeam = require('triple-beam');
const { createLogger, transports, format, transport } = require('winston');
const { options } = require('../routes/routes');
require('winston-daily-rotate-file');
const logDir = './winston_logs';

if (!fs.existsSync(logDir)) {
	fs.mkdirSync(logDir);
}

// -----------error hunter and printer

const errorHunter = logform.format((info) => {
	if (info.error) return info;

	const splat = info[tripleBeam.SPLAT] || [];
	info.error = splat.find((obj) => obj instanceof Error);
	return info;
});

const errorPrinter = logform.format((info) => {
	if (!info.error) return info;

	const errorMsg = info.error.stack || info.error.toString();
	info.message += `\n${errorMsg}`;
	return info;
});

const winstonConsoleFormat = logform.format.combine(
	errorHunter(),
	errorPrinter(),
	logform.format.printf((info) => `${info.level}: ${info.message}`)
);

// -----------error call stack trace

const errorStackTracerFormat = format((info) => {
	if (info.meta && info.meta instanceof Error) {
		info.message = `${info.message} ${info.meta.stack}`;
	}
	return info;
});

// -----------logging function

const customLogger = createLogger({
	transports: [
		new transports.File({
			filename: `${logDir}/custom.log`,
			level: 'info',
			format: format.combine(format.timestamp(), format.json())
		}),
		new transports.File({
			filename: `${logDir}/error.log`,
			level: 'error',
			format: format.combine(
				format.timestamp(),
				// format.json(),
				format.prettyPrint(),
				errorStackTracerFormat(),
				format.simple()
			),
			json: false
		}),
		new transports.File({
			filename: `${logDir}/debug.log`,
			level: 'debug',
			format: format.combine(
				format.timestamp(),
				errorStackTracerFormat(),
				format.prettyPrint(), // format.json(),
				format.errors({ stack: true }),
				format.simple()
			),
			json: false
		})
	]
});

const debugLogger = createLogger({
	transports: [
		new transports.File({
			filename: `${logDir}/error_debug1.log`,
			// level: 'info',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				// format.json(),
				format.errors({ stack: true })
				// format.simple()
			),
			json: false
			// options: {
			// 	flags: 'w'
			// }
		}),
		new transports.File({
			filename: `${logDir}/error_stack_trace.log`,
			// level: 'error',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				format.errors({ stack: true })
			)
			// json: false,
			// options: {
			// 	flags: 'w'
			// }
		}),
		new transports.File({
			filename: `${logDir}/error_verbose.log`,
			// level: 'verbose',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				format.errors({ stack: true })
			),
			json: false
			// options: {
			// 	flags: 'w'
			// }
		}),
		new transports.File({
			filename: `${logDir}/1_error_debug.log`,
			level: 'info',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				// format.json(),
				format.errors({ stack: true })
				// format.simple()
			),
			json: false
			// options: {
			// 	flags: 'w'
			// }
		}),
		new transports.File({
			filename: `${logDir}/1_error_stack_trace.log`,
			level: 'error',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				format.errors({ stack: true })
			),
			json: false
			// options: {
			// 	flags: 'w'
			// }
		}),
		new transports.File({
			filename: `${logDir}/1_error_verbose.log`,
			level: 'verbose',
			format: format.combine(
				format.splat(),
				errorStackTracerFormat(),
				format.timestamp(),
				format.prettyPrint(),
				format.errors({ stack: true })
			),
			json: false
			// options: {
			// 	flags: 'w'
			// }
		})
	]
});

const consoleLogger = createLogger({
	transports: [
		new transports.Console({
			format: winstonConsoleFormat
		})
	]
});

module.exports = {
	customLogger,
	debugLogger,
	consoleLogger
};
