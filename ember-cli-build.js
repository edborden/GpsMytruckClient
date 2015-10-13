/* global require, module */

var env = process.env.EMBER_ENV;
var config = require('./config/environment')(env);

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function(defaults) {
	var app = new EmberApp(defaults);

	var pickFiles = require('broccoli-funnel');
	var mergeTrees = require('broccoli-merge-trees');

	// Font-Awesome
	var fontAwesomeFonts = pickFiles('bower_components/components-font-awesome/fonts', {
		destDir: '/fonts'
	});

	// Bootstrap
	app.import('bower_components/bootstrap/js/dropdown.js');
	app.import('bower_components/bootstrap/js/collapse.js');

	return mergeTrees([app.toTree(),fontAwesomeFonts]);
};
