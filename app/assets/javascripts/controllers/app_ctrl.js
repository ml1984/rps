angular.module('AppController', ['GameService']).controller('AppCtrl', ['$scope', 'Game', '$interval', '$document',
  function($scope, Game, $interval, $document) {
    new Game({}).create().then(function(results){
      $scope.game = results;
    });
    $scope.counter = 3;
    $scope.shouldListen = false;
    $scope.keypresses = [];

    document.body.addEventListener('keydown', function(e) {
      if ($scope.shouldListen) {
        $scope.keypresses.push(e.code);
      }
      if ($scope.keypresses.length >=2) {
        $scope.shouldListen= false;
      }
    })

    $scope.saveGame = function () {
      $scope.game.save();
      var counter = $interval(function() {
        $scope.counter--;
        if ($scope.counter === 0) {
          $interval.cancel(counter)
          $scope.shouldListen = true;
        }
      }, 1000)

    }
  }]);
