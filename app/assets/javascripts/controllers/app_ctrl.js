angular.module('AppController', ['GameService']).controller('AppCtrl', ['$scope', 'Game', '$interval', '$document',
  function($scope, Game, $interval, $document) {
    Game.query({}).then(function (results) {
      $scope.games = results;
      
    })

    new Game({}).create().then(function(results){
      $scope.game = results;
    });
    $scope.shouldListen = false;
    $scope.keypresses = [];

    document.body.addEventListener('keydown', function(e) {
      if ($scope.shouldListen) {
        $scope.keypresses.push(e.code);

        if (e.code ==='KeyA'|| e.code === 'KeyS'|| e.code === 'KeyD') {
          $scope.game.player1_move = e.code;
        }else if (e.code ==='KeyJ'|| e.code === 'KeyK'|| e.code === 'KeyL'){
          $scope.game.player2_move = e.code;
        }

        if ($scope.game.player1_move != undefined &&
            $scope.game.player1_move.length >= 0 &&
            $scope.game.player2_move != undefined &&
            $scope.game.player2_move.length >= 0){
          $scope.shouldListen= false;
          $scope.game.save();
          $scope.games.push($scope.game);
        }
      }
    })

    $scope.resetGame = function () {
      new Game({player1_name: $scope.game.player1_name, player2_name: $scope.game.player2_name }).create().then(function(results){
        $scope.game = results;
      });
    }

    $scope.saveGame = function () {
      $scope.counter = 3;
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
