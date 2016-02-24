angular.module('CoolService', []).factory('Cool', CoolService);

CoolService.$inject = ['$http'];

function CoolService($http) {
  return {
    awesome: $http.get('/rock_paper_scissors/cool')
  }
}
