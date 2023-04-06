# Delete a tag configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.delete_tag_configuration("ExampleMetric")
