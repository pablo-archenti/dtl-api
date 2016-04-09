'use strict';

angular
.module('dtlDashboard', [
    'oc.lazyLoad',
    'ui.router',
    'ui.bootstrap',
    'angular-loading-bar',
    'sbAdminApp',
    'dtlClient',
    'notifications',
    'admin'
])
.run(appRun);

appRun.$inject = ['$rootScope', '$state', 'Admin'];

function appRun($rootScope, $state, Admin) {
    $rootScope.$on('$stateChangeStart', function (event, toState, toParams) {
        var requireLogin = toState.data.requireLogin;

        if (requireLogin && !Admin.isAuthenticated()) {
            event.preventDefault();
            $state.go('dashboard');
        }
    });
}
