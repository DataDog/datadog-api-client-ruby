# Get a Cloud Cost Management tag key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_cost_tag_key("tag_key")
