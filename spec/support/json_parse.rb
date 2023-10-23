# frozen_string_literal: true
module Helpers
  module JsonParse
    def json_parse(data)
      HashWithIndifferentAccess.new(JSON.parse(data))
    end

    def json_data(response)
      json_parse(response.body)[:data].to_json
    end

    def json_size(response)
      json_parse(response.body)[:data].size
    end

    def json_message(response)
      json_parse(response.body)[:message]
    end
  end
end
