
require('helpers');

App = Em.Application.create({

  store: DS.Store.create({
    revision: 3
  }),

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


