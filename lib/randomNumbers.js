module.exports = (function() {
    'use strict';

    var random = {};

    random.get = function get(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    };

    return random;
})();
