module.exports = (grunt) ->
  grunt.config "jasmine",
  src: "dist/js/*.js"
  options:
    specs: "specs/js/*Spec.js"
    helpers: "specs/js/*Helper.js"
    vendor: ["bower_components/jquery/dist/jquery.min.js", "specs/lib/*.js"]

  grunt.loadNpmTasks "grunt-contrib-jasmine"
