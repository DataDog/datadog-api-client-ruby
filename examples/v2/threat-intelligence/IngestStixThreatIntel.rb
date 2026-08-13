# Ingest STIX threat intelligence returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.ingest_stix_threat_intel".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ThreatIntelligenceAPI.new

body = DatadogAPIClient::V2::STIXBundleRequest.new({
  id: "bundle--44444444-4444-4444-8444-444444444444",
  objects: [
    DatadogAPIClient::V2::STIXIndicatorObject.new({
      created: "2026-07-22T12:00:00Z",
      id: "indicator--55555555-5555-4555-8555-555555555555",
      modified: "2026-07-22T12:00:00Z",
      pattern: "[ipv4-addr:value = '198.51.100.42']",
      pattern_type: DatadogAPIClient::V2::STIXPatternType::STIX,
      spec_version: DatadogAPIClient::V2::STIXSpecVersion::VERSION_2_1,
      type: DatadogAPIClient::V2::STIXIndicatorType::INDICATOR,
      valid_from: "2026-07-22T12:00:00Z",
    }),
  ],
  spec_version: DatadogAPIClient::V2::STIXSpecVersion::VERSION_2_1,
  type: DatadogAPIClient::V2::STIXBundleType::BUNDLE,
})
p api_instance.ingest_stix_threat_intel("Acme-Inc", body)
