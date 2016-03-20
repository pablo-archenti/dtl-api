'use strict';

angular
.module('sbAdminApp')
.controller('MainCtrl', function($scope, Admin, $state) {
    $scope.loginError = false;

    $scope.login = function(credentials) {
        Admin.login(
            credentials
        )
        .$promise
        .then(function() {
            $state.go('dashboard.home');
        })
        .catch(function(err) {
            $scope.loginError = true;
        });
    };
});
