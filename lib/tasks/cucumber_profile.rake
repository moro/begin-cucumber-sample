require 'cucumber/rake/task'

vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
namespace :cucumber do
  Cucumber::Rake::Task.new({:with_alice_login => 'db:test:prepare'}, 'Run features with tag @login_as_alice') do |t|
    t.binary = vendored_cucumber_bin
    t.fork = true
    t.profile = 'with_alice_login'
  end
end
