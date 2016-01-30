module.exports = function(Project) {
    'use strict';
    var app = require('../../server/server');
    var util = require('util');

    Project.observe('loaded', loaded);

    function loaded(ctx, next) {
        var project = ctx.instance;
        if (!project) return next();

        if (project.picture) {
            project.picture = util.format('%s/%s', app.get('dtlWebserver').projectsPicsMainEndpoint, project.picture);
        }

        if (project.gallery()) {
            project.gallery().forEach(function(pic, index) {
                project.gallery()[index]['url'] = util.format('%s/%s', app.get('dtlWebserver').projectsPicsGalleryEndpoint, pic.url);
            });
        }

        next();
    }
};
