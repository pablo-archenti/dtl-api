var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task(
    'ng-client',
    shell.task(['lb-ng -m dtlService server/server.js ../dtl-app/www/app/lib/dtlService.module.js'], {verbose: true})
);
