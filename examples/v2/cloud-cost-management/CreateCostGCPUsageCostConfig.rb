# Create Cloud Cost Management GCP Usage Cost config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::GCPUsageCostConfigPostRequest.new({
  data: DatadogAPIClient::V2::GCPUsageCostConfigPostData.new({
    attributes: DatadogAPIClient::V2::GCPUsageCostConfigPostRequestAttributes.new({
      account_id: "123456_A123BC_12AB34",
      bucket_name: "dd-cost-bucket",
      dataset: "billing",
      export_prefix: "datadog_cloud_cost_usage_export",
      export_project_name: "dd-cloud-cost-report",
      service_account: "dd-ccm-gcp-integration@my-environment.iam.gserviceaccount.com",
    }),
    type: DatadogAPIClient::V2::GCPUsageCostConfigPostRequestType::GCP_USAGE_COST_CONFIG_POST_REQUEST,
  }),
})
p api_instance.create_cost_gcp_usage_cost_config(body)
