module.exports =
  devFile: "dist/js/modernizr.js"
  outputFile: "dist/js/modernizr.js"
  extra:
    shiv: true
    printshiv: true
    load: true
    mq: false
    cssclasses: true

  extensibility:
    addtest: false
    prefixed: false
    teststyles: false
    testprops: false
    testallprops: false
    hasevents: false
    prefixes: false
    domprefixes: false

  uglify: true
  parseFiles: true
  matchCommunityTests: false
