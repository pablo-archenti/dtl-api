var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task(
    'ng-client-update',
    shell.task(['./node_modules/loopback-sdk-angular-cli/bin/lb-ng -m dtlClient server/server.js ../dtl-app/www/app/lib/dtl/dtl.client.js'], {verbose: true})
);
