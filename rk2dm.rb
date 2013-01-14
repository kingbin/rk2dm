require 'yaml'
require 'ostruct'

require 'runkeeper'

Settings = YAML.load_file("_config.yml")
puts Settings["runkeeper"]["access_token"]

user = Runkeeper.new(Settings["runkeeper"]["access_token"])
puts user.fitness_activities_recent("2013-01-13")
puts user.fitness_activities
puts user.activity_detail("141921782")



