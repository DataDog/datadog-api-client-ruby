# Delete Cloud Cost Management AWS CUR config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_cost_awscur_config("100")
