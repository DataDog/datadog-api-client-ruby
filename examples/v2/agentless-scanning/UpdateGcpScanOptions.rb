# Update GCP scan options returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::GcpScanOptionsInputUpdate.new({
  data: DatadogAPIClient::V2::GcpScanOptionsInputUpdateData.new({
    id: "api-spec-test",
    type: DatadogAPIClient::V2::GcpScanOptionsInputUpdateDataType::GCP_SCAN_OPTIONS,
    attributes: DatadogAPIClient::V2::GcpScanOptionsInputUpdateDataAttributes.new({
      vuln_containers_os: false,
    }),
  }),
})
p api_instance.update_gcp_scan_options("api-spec-test", body)
