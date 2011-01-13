require 'active_record'
require 'logger'

namespace :db do
  task :migrate do
    ActiveRecord::Base.establish_connection(YAML::load(File.open('database.yml')))
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migrator.migrate('db/migrate')
  end
end