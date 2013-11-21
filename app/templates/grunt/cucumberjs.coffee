module.exports = (grunt) ->
  grunt.config "cucumberjs",
  files: 'features'
  options:
    steps: "features/step_definitions"

  grunt.loadNpmTasks "grunt-cucumber"
