module.exports = (grunt) ->
  grunt.config "concat",
  js:
    src: ["js/libs/*", "js/app.js"]
    #put it in dist/
    dest: "dist/js/<%= _.slugify(projectName) %>.js"

  grunt.loadNpmTasks "grunt-contrib-concat"
