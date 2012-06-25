# Only required if you didn't installed this gem
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'mailrelay'

# Set your hostname and api key here
hostname = 'your_hostname'
api_key = 'your_api_key'

api = Mailrelay::API.new hostname, api_key

puts 'Getting two subscribers'

api.getSubscribers(:count => 2, :offset => 0).each do |subscriber|
  puts 'Subscriber #' + subscriber['id'] + ' with email ' + subscriber['email']
end