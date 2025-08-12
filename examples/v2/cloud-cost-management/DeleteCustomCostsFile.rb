# Delete Custom Costs file returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_custom_costs_file("9ed1a245-8291-44de-9f59-1dc87975ca4a")
