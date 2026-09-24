# Delete a report schedule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ReportSchedulesAPI.new
p api_instance.delete_report_schedule("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
