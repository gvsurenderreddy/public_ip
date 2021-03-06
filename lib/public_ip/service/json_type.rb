require 'json'

module PublicIp
  module Service
    class JsonType < Simple
      extend PublicIp::Service::Registrable

      def self.parse_json(_json_data)
        fail 'Not implemented'
      end

      def self.ip
        response = perform_request

        parse_json(JSON.parse(response.body.strip))
      end
    end
  end
end
