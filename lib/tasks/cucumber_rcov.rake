require 'cucumber/rake/task'
namespace :cucumber do
  Cucumber::Rake::Task.new(:rcov) do |t|
    require 'rcov'
    t.rcov = true
    t.fork = true
    t.rcov_opts = %w{--rails --exclude osx\/objc,gems\/,spec\/}
    t.rcov_opts << %[-o "features_rcov"]
  end
end

