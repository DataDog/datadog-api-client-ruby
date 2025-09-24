# Update azure scan options returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new

body = DatadogAPIClient::V2::AzureScanOptionsInputUpdate.new({
  data: DatadogAPIClient::V2::AzureScanOptionsInputUpdateData.new({
    id: "12345678-90ab-cdef-1234-567890abcdef",
    type: DatadogAPIClient::V2::AzureScanOptionsInputUpdateDataType::AZURE_SCAN_OPTIONS,
  }),
})
api_instance.update_azure_scan_options("12345678-90ab-cdef-1234-567890abcdef", body)
