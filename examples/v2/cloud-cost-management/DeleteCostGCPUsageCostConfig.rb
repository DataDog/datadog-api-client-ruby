# Delete Google Cloud Usage Cost config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_cost_gcp_usage_cost_config(100)
