require 'cucumber/rake/task'

vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
namespace :cucumber do
  Cucumber::Rake::Task.new({:golden_path => 'db:test:prepare'}, 'Run features with tag @login_as_alice') do |t|
    t.binary = vendored_cucumber_bin
    t.fork = true
    t.profile = 'golden_path'
  end
end
