# Enable historical metrics ingestion returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::HistoricalMetricsConfigurationCreateRequest.new({
  data: DatadogAPIClient::V2::HistoricalMetricsConfigurationCreateData.new({
    id: "dd.test.metric",
    type: DatadogAPIClient::V2::HistoricalMetricsConfigurationType::HISTORICAL_METRICS_CONFIGURATIONS,
  }),
})
p api_instance.create_historical_metrics_configuration(body)
