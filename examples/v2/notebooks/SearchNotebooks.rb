# Search notebooks returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_notebooks".to_sym] = true
end
api_instance = DatadogAPIClient::V2::NotebooksAPI.new
p api_instance.search_notebooks()
