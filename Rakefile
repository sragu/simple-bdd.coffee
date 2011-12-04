
begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'

  desc "runs coffee script through jasmine-node"
  task :coffee do
  	sh "jasmine-node --coffee --verbose spec/"
  end

rescue LoadError
  task :jasmine do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end

