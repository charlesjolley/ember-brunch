
var HELPERS = require('helpers');

module.exports = HELPERS.Application.create({

  // invoked when the app is ready to start. add any necessary code
  // here to kick things off. Be sure to remove your loading view.
  ready: function() {
    $('#loading').remove();

    Em.View.create({
      templateName: 'views/templates/home',
      classNames: ['container']
    }).append();

    console.log('READY');
  }

});


