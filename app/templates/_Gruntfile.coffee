module.exports = (grunt) ->

  grunt.initConfig pkg: require("./package.json")

  ##### Tasks ######
  grunt.loadTasks "grunt"
 
  # NOTE: this has to wipe out everything
  grunt.registerTask "root-canal", [ "clean:all", "copy:main", "bower"]

  # Clean, compile and concatenate JS
  grunt.registerTask "javascript:dev", [ "coffee", "concat:js", "jasmine", "cucumberjs", "plato" ]

  grunt.registerTask "javascript:dist", [ "coffee", "concat:js", "modernizr", "jasmine", "cucumberjs" ]

  # Build tasks
  grunt.registerTask "buildDev", [ "root-canal", "javascript:dev", "compass:dev", "assemble", "grunticon"]

  grunt.registerTask "buildProduction", [ "root-canal", "javascript:dist", "compass:dist", "assemble", "grunticon"]

  grunt.registerTask "server", ["connect", "watch"]

  # Default task
  grunt.registerTask "default", "buildDev"

