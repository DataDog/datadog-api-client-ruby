# Delete Cloud Cost Management Azure config returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_cost_azure_uc_config("100")
