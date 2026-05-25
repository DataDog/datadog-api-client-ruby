# Get tree-sitter WASM file returns "BLOB with the content of the WASM file" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_static_analysis_tree_sitter_wasm".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_static_analysis_tree_sitter_wasm("tree-sitter-python.wasm")
