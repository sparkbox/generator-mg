module.exports = (grunt) ->
  grunt.config "bower",
    dev:
      dest: "dist/js/libs/"

  grunt.loadNpmTasks "grunt-bower"
