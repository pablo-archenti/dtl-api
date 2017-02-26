var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task(
    'ng-client-app',
    shell.task(['./node_modules/.bin/lb-ng -m dtlClient server/server.js ../dtl-app/www/app/lib/dtl/dtl.client.js'], {verbose: true})
);

gulp.task(
    'ng-client-admin',
    shell.task(['./node_modules/.bin/lb-ng -m dtlClient server/server.js client/www/app/lib/dtl.client.js'], {verbose: true})
);
