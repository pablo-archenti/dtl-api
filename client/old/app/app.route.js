'use strict';

angular
.module('dtlDashboard')
.config(routes);

routes.$inject = ['$stateProvider','$urlRouterProvider'];

function routes($stateProvider, $urlRouterProvider) {
    $stateProvider
    .state('login', {
        url:'/login',
        controller: 'loginCtrl',
        templateUrl:'app/admin/templates/login.html',
        data: {
            requireLogin: false
        }
    })
    .state('logout', {
        url: '/logout',
        controller: 'logoutCtrl',
        data: {
            requireLogin: true
        }
    })
    .state('dashboard', {
        url:'/dashboard',
        abstract: true,
        templateUrl: 'layout/main.html',
        data: {
            requireLogin: true
        }
    })
    .state('dashboard.notifications', {
        abstract: true,
        url:'/notifications',
        templateUrl:'notifications/templates/main.html'
    })
    .state('dashboard.notifications.send', {
        url:'/send',
        controller: 'sendCtrl',
        templateUrl:'notifications/templates/send.html'
    });

    $urlRouterProvider.otherwise('/dashboard/notifications/send');
}
