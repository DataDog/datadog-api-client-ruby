# List source maps returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMAPI.new
opts = {
  mapkind: SourcemapMapKind::WASM,
  symbol_type: SourcemapSymbolType::SOURCEMAP,
  filter_service: [
    "my-wasm-app",
  ],
  filter_version: [
    "1.0.0",
  ],
}
p api_instance.list_sourcemaps(opts)
