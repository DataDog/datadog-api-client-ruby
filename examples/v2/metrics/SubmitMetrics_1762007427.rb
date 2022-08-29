# Submit metrics with compression returns "Payload accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::MetricPayload.new({
  series: [
    DatadogAPIClient::V2::MetricSeries.new({
      metric: "system.load.1",
      type: DatadogAPIClient::V2::MetricIntakeType::UNSPECIFIED,
      points: [
        DatadogAPIClient::V2::MetricPoint.new({
          timestamp: Time.now.to_i,
          value: 0.7,
        }),
      ],
    }),
  ],
})
opts = {
  content_encoding: MetricContentEncoding::ZSTD1,
}
p api_instance.submit_metrics(body, opts)
