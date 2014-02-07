module.exports = (grunt) ->
  grunt.config "grunticon",
    icons:
      files: [
        expand: true,
        cwd: 'public/grunticon/src',
        src: ["*.svg"],
        dest: 'public/grunticon'
      ]

  grunt.loadNpmTasks 'grunt-grunticon'

