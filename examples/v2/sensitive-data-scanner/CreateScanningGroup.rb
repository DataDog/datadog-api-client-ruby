# Create Scanning Group returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SensitiveDataScannerAPI.new

# a valid "configuration" in the system
CONFIGURATION_DATA_ID = ENV["CONFIGURATION_DATA_ID"]

body = DatadogAPIClient::V2::SensitiveDataScannerGroupCreateRequest.new({
  meta: DatadogAPIClient::V2::SensitiveDataScannerMetaVersionOnly.new({}),
  data: DatadogAPIClient::V2::SensitiveDataScannerGroupCreate.new({
    type: DatadogAPIClient::V2::SensitiveDataScannerGroupType::SENSITIVE_DATA_SCANNER_GROUP,
    attributes: DatadogAPIClient::V2::SensitiveDataScannerGroupAttributes.new({
      name: "Example-Sensitive-Data-Scanner",
      is_enabled: false,
      product_list: [
        DatadogAPIClient::V2::SensitiveDataScannerProduct::LOGS,
      ],
      filter: DatadogAPIClient::V2::SensitiveDataScannerFilter.new({
        query: "*",
      }),
    }),
    relationships: DatadogAPIClient::V2::SensitiveDataScannerGroupRelationships.new({
      configuration: DatadogAPIClient::V2::SensitiveDataScannerConfigurationData.new({
        data: DatadogAPIClient::V2::SensitiveDataScannerConfiguration.new({
          type: DatadogAPIClient::V2::SensitiveDataScannerConfigurationType::SENSITIVE_DATA_SCANNER_CONFIGURATIONS,
          id: CONFIGURATION_DATA_ID,
        }),
      }),
      rules: DatadogAPIClient::V2::SensitiveDataScannerRuleData.new({
        data: [],
      }),
    }),
  }),
})
p api_instance.create_scanning_group(body)
