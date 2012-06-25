require 'httparty'
require 'active_support'

module Mailrelay
  class API
    include HTTParty

    def initialize hostname, api_key
      @hostname = hostname
      @api_key = api_key
    end

    def api_url
      "http://#{@hostname}/ccm/admin/api/version/2/&type=json"
    end

    def method_missing(method, *args)
      call(method.to_s, *args)
    end

    protected
      def call function, data
        data[:function] = function
        data[:apiKey] = @api_key

        result  = self.class.post api_url, :body => {:data => ActiveSupport::JSON.encode(data)}
        result = ActiveSupport::JSON.decode(result.body)

        raise 'Call for ' + function + ' failed with the following message: ' + result['error'] if result['status'] == 0
        
        return result['data']
      end
  end
end