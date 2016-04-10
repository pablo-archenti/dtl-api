'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
.controller('loginCtrl', loginCtrl)
.controller('logoutCtrl', logoutCtrl);

loginCtrl.$inject  = ['$scope', '$state'];
logoutCtrl.$inject = ['$scope', '$state'];

function loginCtrl($scope, $state) {
    $scope.loginError = false;

    $scope.login = function(credentials) {
        Admin.login(
            credentials
        )
        .$promise
        .then(function() {
            $state.go('dashboard.notifications');
        })
        .catch(function(err) {
            $scope.loginError = true;
        });
    };
}

function logoutCtrl($scope, Admin, $state) {
    Admin.logout()
    .$promise
    .finally(function() {
        $state.go('login');
    });
}
