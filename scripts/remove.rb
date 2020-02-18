require 'highline/import'
require 'json'
require 'mechanize'

# sample command
#    dir: bundle exec ruby remove.rb basic
#    dir: bundle exec ruby remove.rb extra
#   json: bundle exec ruby remove.rb list_v4 json
#   json: bundle exec ruby remove.rb list_v4-basic json

require './remover'
remover = Remover.new(remove_img_target: ARGV[0], target_mode: ARGV[1])
remover.serial
puts 'Done!'
