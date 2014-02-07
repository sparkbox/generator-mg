module.exports = (grunt) ->
  grunt.config "compass",
    dev:
      options:
        environment: 'dev'
    dist:
      options:
        environment: 'production'

  grunt.loadNpmTasks 'grunt-contrib-compass'
