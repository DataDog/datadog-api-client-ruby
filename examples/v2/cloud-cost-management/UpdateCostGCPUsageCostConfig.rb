# Update Google Cloud Usage Cost config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::GCPUsageCostConfigPatchRequest.new({
  data: DatadogAPIClient::V2::GCPUsageCostConfigPatchData.new({
    attributes: DatadogAPIClient::V2::GCPUsageCostConfigPatchRequestAttributes.new({
      is_enabled: true,
    }),
    type: DatadogAPIClient::V2::GCPUsageCostConfigPatchRequestType::GCP_USAGE_COST_CONFIG_PATCH_REQUEST,
  }),
})
p api_instance.update_cost_gcp_usage_cost_config(100, body)
