# Delete a Cloud Cost Management tag description returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_cost_tag_description_by_key("tag_key")
