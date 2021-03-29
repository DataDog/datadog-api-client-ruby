require 'datadog_api_client/v1'
require 'datadog_api_client/v2'

# Extend the automatically-generated client configuration classes with a user-friendly authentication configuration,
# hiding the original #api_key method

module DatadogAPIClient::V1
  class Configuration
    private :api_key # Make original getter private

    def api_key=(api_key)
      self.api_key['apiKeyAuth'] = api_key
    end

    def application_key=(app_key)
      self.api_key['appKeyAuth'] = app_key
    end
  end
end

module DatadogAPIClient::V2
  class Configuration
    private :api_key # Make original getter private

    def api_key=(api_key)
      self.api_key['apiKeyAuth'] = api_key
    end

    def application_key=(app_key)
      self.api_key['appKeyAuth'] = app_key
    end
  end
end
