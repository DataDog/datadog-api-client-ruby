# Delete Custom Costs File returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_custom_costs_file("9d055d22-a838-4e9f-bc34-a4f9ab66280c")
