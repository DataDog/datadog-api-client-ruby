# List Cloud Cost Management tag descriptions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_tag_descriptions()
