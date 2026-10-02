# Get exposure SQL model returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
p api_instance.get_exposure_sql_model("550e8400-e29b-41d4-a716-446655440000")
