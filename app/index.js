'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');


var MgGenerator = module.exports = function MgGenerator(args, options, config) {
  yeoman.generators.Base.apply(this, arguments);

  this.on('end', function () {
    this.installDependencies({ skipInstall: options['skip-install'] });
  });

  this.pkg = JSON.parse(this.readFileAsString(path.join(__dirname, '../package.json')));
};

util.inherits(MgGenerator, yeoman.generators.Base);

MgGenerator.prototype.askFor = function askFor() {
  var cb = this.async();

  // have Yeoman greet the user.
  console.log(this.yeoman);

  var prompts = [{
    name: 'projectName',
    message: 'Would you like to call this project?',
  }];

  this.prompt(prompts, function (props) {
    this.projectName = props.projectName;

    cb();
  }.bind(this));
};

MgGenerator.prototype.app = function app() {
  //
};

MgGenerator.prototype.projectfiles = function projectfiles() {
  this.template('_package.json', 'package.json');
  this.template('_bower.json', 'bower.json');
  this.template('_bowerrc', 'bowerrc');
  this.template('_Gruntfile.coffee', 'Gruntfile.coffee');
};

MgGenerator.prototype.runtime = function runtime() {
  this.copy('gitignore', '.gitignore');
  this.copy('Gemfile', 'Gemfile');
  this.copy('Gemfile.lock', 'Gemfile.lock');
  this.copy('config.rb', 'config.rb');
  this.directory('public', 'public');
  this.directory('scss', 'scss');
  this.directory('coffee', 'coffee');
  this.directory('data', 'data');
  this.directory('specs', 'specs');
  this.directory('partials', 'partials');
  this.directory('features', 'features');
  this.directory('reports', 'reports');
  this.directory('opt-imgs', 'opt-imgs');
};
