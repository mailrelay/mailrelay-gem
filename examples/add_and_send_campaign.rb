# Only required if you didn't installed this gem
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'mailrelay'

# Set your hostname and api key here
hostname = 'your_hostname'
api_key = 'your_api_key'

api = Mailrelay::API.new hostname, api_key

puts 'Adding and sending campaign'

campaign = api.addCampaign({
  :subject => 'My campaign',
  :mailboxFromId => 1,
  :mailboxReplyId => 1,
  :mailboxReportId => 1,
  :emailReport => 1,
  :groups => [1, 2],
  :html => '<html><body><p>Example</p></body></html>',
  :packageId => 6,
  :campaignFolderId => 1
})

mailing_list = api.sendCampaign :id => campaign

puts 'Here is your mailing list id #' + mailing_list.to_s + '. Have fun with getStats, getClicksInfo and other functions.'