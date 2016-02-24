angular.module('AppController', ['CoolService', 'AwesomeDirective']).controller('AppCtrl', AppCtrl);

AppCtrl.$inject = ['$location', 'Cool'];

function AppCtrl($location, Cool) {
  var app = this;
  app.heading = 'Rock Paper Scissors';
  app.path = $location.host();
  app.awesome = 'wait for it';
  Cool.awesome.then(function(data) {
    app.awesome = data.data.msg;
  })
}
