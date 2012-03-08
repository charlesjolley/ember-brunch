// Generic Helpers From Base.
 
var appCache = window.applicationCache;

// Update base application to make it appCache aware
Em._Application = Em.Application;

Em.Application = Em._Application.extend({

  UPDATE_PERIOD: 50000,

  init: function() {
    this._super();
    appCache.addEventListener('updateready', function() {
      if(appCache.status === appCache.UPDATEREADY) {
        if (this.appShouldUpdate() !== false) {
          appCache.swapCache();
          this.appDidUpdate();
        }
      }
    }.bind(this));

    this._updateTimer = setInterval(function() { 
      appCache.update();
    }, this.UPDATE_PERIOD);

    // export views into app to make them visible to templates
    var views = require('views');
    for(var name in views) {
      if (views.hasOwnProperty(name)) this[name] = views[name];
    }
  },

  reload: function() {
    window.location.reload();
  },

  // check for an update
  checkUpdate: function() {
    appCache.update();
  },

  appShouldUpdate: function() {
    return true;
  },

  appDidUpdate: function() {
    this.reload();
  }
});



