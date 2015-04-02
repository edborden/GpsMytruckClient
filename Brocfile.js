/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

var pickFiles = require('broccoli-static-compiler');
var mergeTrees = require('broccoli-merge-trees');

// Font-Awesome
var fontAwesomeFonts = pickFiles('bower_components/components-font-awesome/fonts', {
	srcDir: '/',
	destDir: '/fonts'
});

// Bootstrap
app.import('bower_components/bootstrap/js/dropdown.js');

module.exports = mergeTrees([app.toTree(),fontAwesomeFonts]);