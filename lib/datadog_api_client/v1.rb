require_relative 'v1/model_base'

module DatadogAPIClient::V1
  class << self
    def configure(&block)
      DatadogAPIClient.configure(&block)
    end
  end
end
