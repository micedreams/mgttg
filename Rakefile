require 'rspec/core/rake_task'

desc 'Create tasks to run unit tests'

RSpec::Core::RakeTask.new(:unit) do |t|
  t.pattern = './spec/unit/{,/*/**}/*_spec.rb'
end


desc 'Default: run specs and generate metrics'

namespace :coverage do
  desc ""
  task :unit do
    ENV["COVERAGE"] = "enable"
    Rake::Task['unit'].invoke
  end
end

task :default => ["coverage:unit"]
