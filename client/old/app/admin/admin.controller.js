'use strict';

angular
.module('Admin')
.controller('loginCtrl', loginCtrl)
.controller('logoutCtrl', logoutCtrl);

loginCtrl.$inject = ['$scope', 'Admin', '$state'];
logoutCtrl.$inject = ['$scope', 'Admin', '$state'];

function loginCtrl($scope, Admin, $state) {
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
