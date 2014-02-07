module.exports = (grunt) ->
  grunt.config "copy",
    main:
      files: [
        expand: true
        cwd:'public/'
        src: ["**"]
        dest: "dist/"
      ]

  grunt.loadNpmTasks 'grunt-contrib-copy'
