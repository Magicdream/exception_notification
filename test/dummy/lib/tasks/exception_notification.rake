require 'rake'

task :rescue_exception_with_env => :environment do
  1/0
end

task :rescue_exception_without_env do
  1/0
end
