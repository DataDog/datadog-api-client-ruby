# Create Azure scan options returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::AzureScanOptions.new({
  data: DatadogAPIClient::V2::AzureScanOptionsData.new({
    attributes: DatadogAPIClient::V2::AzureScanOptionsDataAttributes.new({
      vuln_containers_os: true,
      vuln_host_os: true,
    }),
    id: "12345678-90ab-cdef-1234-567890abcdef",
    type: DatadogAPIClient::V2::AzureScanOptionsDataType::AZURE_SCAN_OPTIONS,
  }),
})
p api_instance.create_azure_scan_options(body)
