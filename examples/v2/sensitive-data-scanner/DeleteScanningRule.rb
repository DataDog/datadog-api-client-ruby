# Delete Scanning Rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new

# the "scanning_group" has a "scanning_rule"
RULE_DATA_ID = ENV["RULE_DATA_ID"]

body = DatadogAPIClient::V2::SensitiveDataScannerRuleDeleteRequest.new({
  meta: DatadogAPIClient::V2::SensitiveDataScannerMetaVersionOnly.new({}),
})
p api_instance.delete_scanning_rule(RULE_DATA_ID, body)
