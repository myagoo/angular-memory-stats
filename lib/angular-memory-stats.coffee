MemoryStats = require './memory-stats'
RequestAnimationFrame = require 'requestanimationframe'

module.exports = module = angular.module 'angular-memory-stats', []

module.directive 'angularMemoryStats' , ->
    restrict: 'E'
    scope: false
    controller: ($scope, $element) ->
        stats = new MemoryStats()
        $element.append stats.domElement
        update = ->
            stats.update()
            RequestAnimationFrame update
        RequestAnimationFrame update
