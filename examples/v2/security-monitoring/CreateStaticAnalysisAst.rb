# Get AST for source code returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_static_analysis_ast".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::GetAstRequest.new({
  data: DatadogAPIClient::V2::GetAstRequestData.new({
    attributes: DatadogAPIClient::V2::GetAstRequestDataAttributes.new({
      code: "aW1wb3J0IHN5cw==",
      file_encoding: "utf-8",
      language: "python",
    }),
    type: DatadogAPIClient::V2::GetAstRequestDataType::GET_AST_REQUEST,
  }),
})
p api_instance.create_static_analysis_ast(body)
