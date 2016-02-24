angular.module('AwesomeDirective', ['templates']).directive('awesome', function() {
  return {
    restrict: 'E',
    scope: {
      awesomeness: '='
    },
    controller: AwesomeCtrl,
    controllerAs: 'awe',
    templateUrl: 'awesome.html'
  }
})

function AwesomeCtrl() {
  var awe = this;
  awe.inspire = 'Do awesome things!!!!!'
}
