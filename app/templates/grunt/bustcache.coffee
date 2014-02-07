module.exports = (grunt) ->

  grunt._cacheMap = []

  grunt.config "bushcaster",
    options:
      hashLength: 8
      noProcess: true
      onComplete: (map, files) ->
        files.forEach((file) ->
          grunt._cacheMap.push(
            pattern: file
            replacement: map[file]
          )
        )
    main:
      files: [
        expand: true
        cwd: "dist/"
        src: ["css/mq-base.css", "css/no-mq-base.css", "js/<%= _.slugify(projectName) %>.js", "favicon.ico"]
        dest: "dist/"
      ]

    grunt.config "string-replace",
      dist:
        files:
          "dist/": ["dist/*.html"]
        options:
          replacements: grunt._cacheMap

  grunt.loadNpmTasks "grunt-bushcaster"
  grunt.loadNpmTasks "grunt-string-replace"
