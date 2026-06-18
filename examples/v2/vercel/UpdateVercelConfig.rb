# Update Vercel configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::VercelAPI.new

body = DatadogAPIClient::V2::VercelConfigAttributes.new({
  api_key: DatadogAPIClient::V2::VercelApiKey.new({
    id: "00000000-0000-0000-0000-000000000001",
    value: "",
  }),
  logs_config: DatadogAPIClient::V2::VercelLogsConfig.new({
    enabled: true,
    environments: [
      DatadogAPIClient::V2::VercelEnvironment::PRODUCTION,
    ],
    log_sources: [
      DatadogAPIClient::V2::VercelLogSource::LAMBDA,
    ],
    sampling_percentage: 100,
  }),
  trace_config: DatadogAPIClient::V2::VercelTraceConfig.new({
    enabled: true,
    is_deprecated_otel: false,
    sampling_percentage: 100,
  }),
})
p api_instance.update_vercel_config("configuration_id", body)
