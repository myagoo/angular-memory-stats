require 'angular'
require '../dist/angular-memory-stats'

module.exports = module = angular.module 'test', [
    'angular-memory-stats'
]

module.run ($log) ->
    $log.info 'test running'
