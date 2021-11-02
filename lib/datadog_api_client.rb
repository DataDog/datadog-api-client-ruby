require 'datadog_api_client/version'

module DatadogAPIClient
  autoload :V1, 'datadog_api_client/v1'
  autoload :V2, 'datadog_api_client/v2'
  require 'datadog_api_client/api_key_configuration'
end
