# Mailrelay

Mailrelay gem is a simple Ruby wrapper for [Mailrelay.com][2] API. You can do a large number of operations like managing subscribers and campaigns, sending your newsletters, getting your stats data, etc.

# Installation

Simply run:

    gem install mailrelay
    
# Examples

You can check the [API documentation][1] to view a list of all available functions. All functions can be called with this wrapper.

If you want to create a subscriber, simply use:

	require 'rubygems'
    require 'mailrelay'

    # Set your account hostname and api key here
    hostname = 'your_account_hostname'
    api_key = 'your_api_key'

    api = Mailrelay::API.new hostname, api_key

    api.addSubscriber :email => 'user@example.org', :name => 'Name'

[1]: http://mailrelay.com/es/api-documentation
[2]: http://mailrelay.com
