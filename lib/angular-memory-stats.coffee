MemoryStats = require './memory-stats'
RequestAnimationFrame = require 'requestanimationframe'

module.exports = module = angular.module 'angular-memory-stats', []

module.provider 'angularMemoryStats', ->
    isEnabled = true

    enable = (enable = true) ->
        isEnabled = enable

    $get = ->
        isEnabled: ->
            isEnabled

    enable: enable
    $get: $get

module.directive 'angularMemoryStats' , ->
    restrict: 'E'
    scope: false
    controller: ($scope, $element, angularMemoryStats) ->
        if !angularMemoryStats.isEnabled()
            return
        stats = new MemoryStats()
        $element.css
            'zIndex': 999999
            'position': 'fixed'
            'right': 5
            'bottom': 5
        $element.append stats.domElement
        update = ->
            stats.update()
            RequestAnimationFrame update
        RequestAnimationFrame update
