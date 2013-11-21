module.exports = (grunt) ->
  grunt.config "watch",
  stylesheets:
    files: "scss/**/*"
    tasks: "compass:dev"

  livereload:
    files: "dist/css/*"
    options:
      livereload: true

  images:
    files: "opt-imgs/*"
    tasks: "optimizeImages"

  partials:
    files: ["partials/*", "data/*"]
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
