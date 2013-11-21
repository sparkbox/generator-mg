module.exports = (grunt) ->
  grunt.config "copy",
    main:
      files: [
        expand: true
        cwd:'public/'
        src: ["**"]
        dest: "dist/"
      ]
    img:
      files: [
        expand: true
        cwd:'opt-imgs/'
        src: ["**"]
        dest: "dist/img"
      ]

  grunt.loadNpmTasks 'grunt-contrib-copy'
