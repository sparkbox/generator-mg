module.exports = (grunt) ->
  grunt.config "watch",
  stylesheets:
    files: "scss/**/*"
    tasks: "sass:dev"

  livereload:
    files: "dist/css/*"
    options:
      livereload: true

  partials:
    files: ["templates/**/*", "data/*"]
    tasks: ["assemble"]
    options:
      livereload: true

  javascript:
    files: ["coffee/*", "js/*.js"]
    tasks: "javascript:dev"

  jsTesting:
    files: "dist/js/*.js"
    tasks: "jasmine"

  cukes:
    files: ["features/*.feature", "features/step_definitions/*.coffee"]
    tasks: "cucumberjs"

  publicDirectory:
    files: [ "public/**/*" ]
    tasks: "default"

  grunt.loadNpmTasks 'grunt-contrib-watch'
