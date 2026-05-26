# Analyze code returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_static_analysis_server_analysis".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AnalysisRequest.new({
  data: DatadogAPIClient::V2::AnalysisRequestData.new({
    attributes: DatadogAPIClient::V2::AnalysisRequestDataAttributes.new({
      code: "aW1wb3J0IHN5cw==",
      file_encoding: "utf-8",
      filename: "test.py",
      language: "python",
      rules: [
        DatadogAPIClient::V2::AnalysisRequestRule.new({
          category: "BEST_PRACTICES",
          checksum: "abc123def456",
          code: "ZnVuY3Rpb24gdmlzaXQobm9kZSkge30=",
          entity_checked: nil,
          id: "python-best-practices/no-exit",
          language: "python",
          regex: nil,
          severity: "WARNING",
          tree_sitter_query: "KGNhbGwgbmFtZTogKGF0dHJpYnV0ZSkpQHZhbA==",
          type: "TREE_SITTER_QUERY",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::AnalysisRequestDataType::ANALYSIS_REQUEST,
  }),
})
p api_instance.create_static_analysis_server_analysis(body)
