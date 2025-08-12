# Get Custom Costs file returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_custom_costs_file("9ed1a245-8291-44de-9f59-1dc87975ca4a")
