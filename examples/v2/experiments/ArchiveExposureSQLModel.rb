# Archive exposure SQL model returns "The exposure SQL model was archived. Archiving an already-archived model succeeds
# and leaves the original archive time in place." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new
api_instance.archive_exposure_sql_model("550e8400-e29b-41d4-a716-446655440000")
