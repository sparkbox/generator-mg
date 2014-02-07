module.exports = (grunt) ->
  grunt.config "plato",
  complexity:
    files:
      'reports/js-complexity': ['dist/**/*.js']

  grunt.loadNpmTasks "grunt-plato"
