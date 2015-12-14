window.CapitalRails = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    alert('Hello from backbone!')
    // var router = new MeanCoffee.Routers.Sessions({
    //   $rootEl: $(".backdrop")
    // });
    // Backbone.history.start();
  }
};

$(document).ready(function(){
  CapitalRails.initialize();
})
