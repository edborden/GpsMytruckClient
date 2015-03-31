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

module.exports = mergeTrees([app.toTree(),fontAwesomeFonts]);