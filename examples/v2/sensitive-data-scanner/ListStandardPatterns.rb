# List standard patterns returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new
p api_instance.list_standard_patterns()
