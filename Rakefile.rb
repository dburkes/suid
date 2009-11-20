begin; require 'rubygems'; rescue LoadError; end

require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

desc "Run all specs"
Spec::Rake::SpecTask.new('specs') do |t|
  t.libs << 'lib'
  t.spec_files = FileList['spec/**/*.rb']
end

Dir['tasks/*.rake'].each{|f| import(f) }

task :default => [:specs]

begin
  require 'jeweler'
  require 'lib/suid'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "suid"
    gemspec.version = SUID::VERSION
    gemspec.summary = "Sorta Unique ID"
    gemspec.email = "dburkes@netable.com"
    gemspec.homepage = "http://github.com/dburkes/suid"
    gemspec.description = "Sorta Unique ID"
    gemspec.authors = ["Danny Burkes"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

namespace :doc do
  desc "Generate RDoc"
  Rake::RDocTask.new('suid') { |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.options << '--inline-source'
  }
end
