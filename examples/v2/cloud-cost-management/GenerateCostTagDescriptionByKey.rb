# Generate a Cloud Cost Management tag description returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.generate_cost_tag_description_by_key("tag_key")
