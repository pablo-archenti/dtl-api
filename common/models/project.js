module.exports = function(Project) {
    'use strict';
    var app = require('../../server/server');

    Project.observe('loaded', loaded);

    function loaded(ctx, next) {
        var project = ctx.instance;
        if (!project) return next();
        
        if (project.picture) {
            project.picture = app.get('dtlWebserver').projectsPicsMain + project.picture;
        }

        next();
    }
};
