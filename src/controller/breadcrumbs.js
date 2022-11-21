const Middleware = function () {
	return function (req, res, next) {
		let path = req.originalUrl;
		// console.log('path "req.originalUrl" ' + path);

		let breadCrumbs = path.split('/');
		// console.log('breadCrumbs : ' + breadCrumbs);

		let index = breadCrumbs.indexOf('');
		while (index !== -1) {
			breadCrumbs.splice(index, 1);
			index = breadCrumbs.indexOf('');
		}

		breadCrumbs.splice(0, 0, 'Home');
		req.breadcrumbs = [];

		// let urlPath;
		let urlPath = req.headers.host;
		// console.log('urlPath is ' + urlPath);

		for (let i = 0; i <= breadCrumbs.length - 1; i++) {
			req.breadcrumbs.push({
				name: '/' + ' ' + breadCrumbs[i],
				url: urlPath
			});

			if (breadCrumbs[i + 1]) {
				urlPath += '/' + breadCrumbs[i + 1];
			}
		}
		// console.log('url path is ' + urlPath);
		next();
	};
};

module.exports = {
	Middleware
};
