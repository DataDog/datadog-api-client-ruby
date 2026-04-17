# Export security monitoring resources to Terraform returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.bulk_export_security_monitoring_terraform_resources".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "suppression" in the system
SUPPRESSION_DATA_ID = ENV["SUPPRESSION_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringTerraformBulkExportRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringTerraformBulkExportData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringTerraformBulkExportAttributes.new({
      resource_ids: [
        SUPPRESSION_DATA_ID,
      ],
    }),
    type: "bulk_export_resources",
  }),
})
p api_instance.bulk_export_security_monitoring_terraform_resources(SecurityMonitoringTerraformResourceType::SUPPRESSIONS, body)
