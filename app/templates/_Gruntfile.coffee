module.exports = (grunt) ->

  # Tasks
  grunt.registerTask "bower", [ "copy:bower_jquery", "copy:bower_modernizr" ]
  
  # NOTE: this has to wipe out everything
  grunt.registerTask "root-canal", [ "clean:all", "bower", "copy:main", "copy:img"]

  grunt.registerTask "optimizeImages", ["imageoptim", "copy:img"]

  # Clean, compile and concatenate JS
  grunt.registerTask "javascript:dev", [ "coffee", "concat:js", "jasmine", "cucumberjs", "plato" ]

  grunt.registerTask "javascript:dist", [ "coffee", "concat:js", "modernizr", "jasmine", "cucumberjs" ]

  # Build tasks
  grunt.registerTask "build --dev", [ "root-canal", "javascript:dev", "compass:dev", "assemble"]

  grunt.registerTask "build --production", [ "root-canal", "javascript:dist", "compass:dist", "assemble" ]

  grunt.registerTask "server", ["connect", "watch"]

  # Default task
  grunt.registerTask "default", "build --dev"

