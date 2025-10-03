# POST request to resolve vulnerable symbols returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_sca_resolve_vulnerable_symbols".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::ResolveVulnerableSymbolsRequest.new({
  data: DatadogAPIClient::V2::ResolveVulnerableSymbolsRequestData.new({
    attributes: DatadogAPIClient::V2::ResolveVulnerableSymbolsRequestDataAttributes.new({
      purls: [],
    }),
    type: DatadogAPIClient::V2::ResolveVulnerableSymbolsRequestDataType::RESOLVE_VULNERABLE_SYMBOLS_REQUEST,
  }),
})
p api_instance.create_sca_resolve_vulnerable_symbols(body)
