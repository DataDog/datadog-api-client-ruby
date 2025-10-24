# Create GCP scan options returns "Agentless scan options enabled successfully." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::GcpScanOptions.new({
  data: DatadogAPIClient::V2::GcpScanOptionsData.new({
    id: "new-project",
    type: DatadogAPIClient::V2::GcpScanOptionsDataType::GCP_SCAN_OPTIONS,
    attributes: DatadogAPIClient::V2::GcpScanOptionsDataAttributes.new({
      vuln_host_os: true,
      vuln_containers_os: true,
    }),
  }),
})
p api_instance.create_gcp_scan_options(body)
