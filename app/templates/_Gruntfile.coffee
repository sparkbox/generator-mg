module.exports = (grunt) ->

  grunt.initConfig
    pkg: require("./package.json")

    scssFiles:
      files: [
        expand: true # Enable dynamic expansion.
        cwd: "scss/" # Src matches are relative to this path.
        src: ["**/*.scss"] # Actual pattern(s) to match.
        dest: "dist/css/" # Destination path prefix.
        ext: ".css" # Dest filepaths will have this extension.
        extDot: "first" # Extensions in filenames begin after the first dot
      ]

  ##### Tasks ######
  grunt.loadTasks "grunt"
 
  # NOTE: this has to wipe out everything
  grunt.registerTask "root-canal", [ "clean:all", "copy:main", "bower"]

  # Clean, compile and concatenate JS
  grunt.registerTask "javascript:dev", [ "coffee", "concat:js", "jasmine", "cucumberjs", "plato" ]

  grunt.registerTask "javascript:dist", [ "coffee", "concat:js", "jasmine", "cucumberjs" ]

  # Cache Busting
  grunt.registerTask "bustcache", ["bushcaster:main", "string-replace:dist"]

  # Build tasks
  grunt.registerTask "buildDev", [ "root-canal", "javascript:dev", "sass:dev", "assemble", "grunticon"]

  grunt.registerTask "buildProduction", [ "root-canal", "javascript:dist", "sass:prod", "assemble", "grunticon", "bustcache"]

  grunt.registerTask "server", ["connect", "watch"]

  # Default task
  grunt.registerTask "default", "buildDev"

