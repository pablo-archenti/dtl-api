(function() {
    'use strict';

    angular
    .module('dtlDashboard')
    .config(routes);

    routes.$inject    = ['$stateProvider'];

    function routes($stateProvider, $urlRouterProvider) {
        $stateProvider

        .state('dashboard.notifications', {
            url: '/notifications',
            abstract: true,
            templateUrl: 'app/notifications/templates/main.html'
        })
        .state('dashboard.notifications.main', {
            url: '/main',
            views: {
                send: {
                    controller: 'SendCtrl',
                    templateUrl: 'app/notifications/templates/send.html'
                },
                list: {
                    controller: 'ListCtrl',
                    templateUrl: 'app/notifications/templates/list.html'
                }
            }
        });
    }

})();
