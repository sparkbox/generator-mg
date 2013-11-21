module.exports = (grunt) ->
  grunt.config "assemble",
  options:
    partials: "partials/*"
    data: "data/*.yml"
  index:
    src: "partials/index.hbs"
    dest: "dist/index.html"

  grunt.loadNpmTasks 'assemble'
