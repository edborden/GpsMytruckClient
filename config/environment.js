/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'gps-mytruck-client',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    apiHostName: 'https://gpsmytruck.herokuapp.com',
    APP: {},
    EmberENV: {FEATURES: {}}
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {
    ENV.apiHostName = 'https://gpsmytruck.herokuapp.com'
  }

  return ENV;
};
