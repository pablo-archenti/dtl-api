'use strict';

angular
.module('dtlDashboard')
.config(routes);

routes.$inject = ['$stateProvider','$urlRouterProvider','$ocLazyLoadProvider'];

function routes($stateProvider,$urlRouterProvider,$ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        debug:false,
        events:true,
    });

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
        },
      resolve: {
        loadMyDirectives: function($ocLazyLoad) {
          return
            $ocLazyLoad.load({
              name:'sbAdminApp',
              files:[
                'app/lib/directives/header/header.js',
                'app/lib/directives/header/header-notification/header-notification.js',
                'app/lib/directives/sidebar/sidebar.js',
                'app/lib/directives/sidebar/sidebar-search/sidebar-search.js'
              ]
            }),
            $ocLazyLoad.load(
              {
                name:'toggle-switch',
                files:['bower_components/angular-toggle-switch/angular-toggle-switch.min.js',
                  'bower_components/angular-toggle-switch/angular-toggle-switch.css'
                ]
              }),
            $ocLazyLoad.load(
              {
                name:'ngAnimate',
                files:['bower_components/angular-animate/angular-animate.js']
              });
          $ocLazyLoad.load(
            {
              name:'ngCookies',
              files:['bower_components/angular-cookies/angular-cookies.js']
            });
          $ocLazyLoad.load(
            {
              name:'ngResource',
              files:['bower_components/angular-resource/angular-resource.js']
            });
          $ocLazyLoad.load(
            {
              name:'ngSanitize',
              files:['bower_components/angular-sanitize/angular-sanitize.js']
            });
          $ocLazyLoad.load(
            {
              name:'ngTouch',
              files:['bower_components/angular-touch/angular-touch.js']
            });
        }
      }
    })
    .state('dashboard.notifications', {
        abstract: true,
        url:'/notifications',
        templateUrl:'notifications/templates/main.html',
        resolve: {
            loadMyFiles:function($ocLazyLoad) {
                return $ocLazyLoad.load({
                    name:'sbAdminApp',
                    files:[
                        'app/lib/directives/timeline/timeline.js',
                        'app/lib/directives/notifications/notifications.js',
                        'app/lib/directives/chat/chat.js',
                        'app/lib/directives/dashboard/stats/stats.js'
                    ]
                });
            }
        }
    })
    .state('dashboard.notifications.send', {
        url:'/send',
        controller: 'sendCtrl',
        templateUrl:'notifications/templates/send.html'
    });

    $urlRouterProvider.otherwise('/dashboard/notifications/send');
}
