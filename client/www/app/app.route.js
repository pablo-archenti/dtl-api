(function() {
    'use strict';

    angular
    .module('dtlDashboard')
    .config(routes);

    routes.$inject = ['$stateProvider', '$urlRouterProvider'];

    function routes($stateProvider, $urlRouterProvider) {
        $stateProvider

        .state('dashboard', {
            url: '/dashboard',
            abstract: true,
            templateUrl: 'layout.html',
            data: {
                requireLogin: true
            }
        })
        .state('login', {
            url: '/login',
            templateUrl: 'login.html',
            data: {
                requireLogin: false
            }
        });

        $urlRouterProvider.otherwise(function($injector, $location){
            var $state = $injector.get('$state');
            $state.go('dashboard.notifications.main');
        });
    }

})();
