require 'cucumber/rake/task'

vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
namespace :cucumber do
  Cucumber::Rake::Task.new({:important => 'db:test:prepare'}, 'Run features with tag @important') do |t|
    t.binary = vendored_cucumber_bin
    t.fork = true
    t.profile = 'important'
  end
end
