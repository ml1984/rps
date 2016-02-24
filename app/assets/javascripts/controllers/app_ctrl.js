angular.module('AppController', ['GameService']).controller('AppCtrl', ['$scope', 'Game',
  function($scope, Game) {
    new Game({}).create().then(function(results){
      $scope.game = results;
    });

    $scope.saveGame = function () {
      $scope.game.save();
    }
  }]);
