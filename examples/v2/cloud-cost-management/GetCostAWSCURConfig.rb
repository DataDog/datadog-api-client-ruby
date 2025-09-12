# Get cost AWS CUR config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_cost_awscur_config(123456)
