# Delete source maps returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_sourcemaps".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMAPI.new
opts = {
  symbol_type: SourcemapSymbolType::SOURCEMAP,
  filter_service: [
    "nonexistent-svc",
  ],
  filter_version: [
    "0.0.0-none",
  ],
}
p api_instance.delete_sourcemaps(SourcemapMapKind::WASM, true, opts)
