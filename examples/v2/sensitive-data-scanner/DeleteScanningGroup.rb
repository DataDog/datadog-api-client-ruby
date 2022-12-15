# Delete Scanning Group returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new

# there is a valid "scanning_group" in the system
GROUP_DATA_ID = ENV["GROUP_DATA_ID"]

body = DatadogAPIClient::V2::SensitiveDataScannerGroupDeleteRequest.new({
  meta: DatadogAPIClient::V2::SensitiveDataScannerMetaVersionOnly.new({}),
})
p api_instance.delete_scanning_group(GROUP_DATA_ID, body)
