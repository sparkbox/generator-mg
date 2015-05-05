module.exports = (grunt) ->
  grunt.config "sass",
  prod:
    options:
      sourceMap: false
      outputStyle: 'compressed'
    files: '<%= scssFiles.files %>'
  dev:
    options:
      sourceMap: true
    files: '<%= scssFiles.files %>'

  grunt.loadNpmTasks "grunt-sass"
