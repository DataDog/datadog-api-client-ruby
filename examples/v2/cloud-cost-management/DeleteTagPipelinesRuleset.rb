# Delete tag pipeline ruleset returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_tag_pipelines_ruleset("ee10c3ff-312f-464c-b4f6-46adaa6d00a1")
