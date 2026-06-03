# Submit libraries for vulnerability scanning returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_sca_scan".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::McpScanRequest.new({
  data: DatadogAPIClient::V2::McpScanRequestData.new({
    attributes: DatadogAPIClient::V2::McpScanRequestDataAttributes.new({
      commit_hash: "0e9fc8de83eaabecd722e1cd0ed44fb489fe15fc",
      libraries: [
        DatadogAPIClient::V2::McpScanRequestDataAttributesLibrariesItems.new({
          exclusions: [],
          is_dev: false,
          is_direct: true,
          package_manager: "nuget",
          purl: "pkg:nuget/Newtonsoft.Json@13.0.1",
          target_frameworks: [],
        }),
      ],
      resource_name: "my-org/my-repo",
    }),
    type: DatadogAPIClient::V2::McpScanRequestDataType::MCPSCANREQUEST,
  }),
})
p api_instance.create_sca_scan(body)
