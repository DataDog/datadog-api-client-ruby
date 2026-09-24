# Get rows by id returns "Some or all requested rows were found." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new
p api_instance.get_rows_by_id("id", [])
