# Delete subject type returns "The subject type was deleted." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
api_instance.delete_subject_type("550e8400-e29b-41d4-a716-446655440000")
