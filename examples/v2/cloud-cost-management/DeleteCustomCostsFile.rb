# Delete Custom Costs file returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_custom_costs_file("file_id")
