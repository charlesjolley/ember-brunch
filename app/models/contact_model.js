

App.Contact = DS.Model.extend({

  firstName: DS.attr('string'),
  lastName:  DS.attr('string'),

  fullName:  function() {
    return this.getEach('firstName', 'lastName').join(' ');
  }.property('firstName', 'lastName')

});

