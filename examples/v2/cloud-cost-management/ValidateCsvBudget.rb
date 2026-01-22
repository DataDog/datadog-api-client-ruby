# Validate CSV budget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.validate_csv_budget()
