angular.module('GameService', ['rails']);
angular.module('GameService').factory('Game', ['railsResourceFactory', function (railsResourceFactory) {
    return railsResourceFactory({
        url: '/games',
        name: 'game'
    });
}]);
// factory from angularjs-rails-resource gem
