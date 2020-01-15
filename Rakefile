ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :hello do
    puts "hello from Rake!"
end

task :console do
    Pry.start
end

namespace :db do

  desc 'destroy all seeds'
  task :sweep do
    require_relative './db/sweep.rb'
  end

end