# Reorder Groups returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new

# there is a valid "scanning_group" in the system
GROUP_DATA_ID = ENV["GROUP_DATA_ID"]

# a valid "configuration" in the system
CONFIGURATION_DATA_ID = ENV["CONFIGURATION_DATA_ID"]

body = DatadogAPIClient::V2::SensitiveDataScannerConfigRequest.new({
  data: DatadogAPIClient::V2::SensitiveDataScannerReorderConfig.new({
    relationships: DatadogAPIClient::V2::SensitiveDataScannerConfigurationRelationships.new({
      groups: DatadogAPIClient::V2::SensitiveDataScannerGroupList.new({
        data: [
          DatadogAPIClient::V2::SensitiveDataScannerGroupItem.new({
            type: DatadogAPIClient::V2::SensitiveDataScannerGroupType::SENSITIVE_DATA_SCANNER_GROUP,
            id: GROUP_DATA_ID,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::SensitiveDataScannerConfigurationType::SENSITIVE_DATA_SCANNER_CONFIGURATIONS,
    id: CONFIGURATION_DATA_ID,
  }),
  meta: DatadogAPIClient::V2::SensitiveDataScannerMetaVersionOnly.new({}),
})
p api_instance.reorder_scanning_groups(body)
