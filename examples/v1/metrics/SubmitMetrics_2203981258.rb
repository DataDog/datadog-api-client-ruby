# Submit deflate metrics returns "Payload accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new

body = DatadogAPIClient::V1::MetricsPayload.new({
  series: [
    DatadogAPIClient::V1::Series.new({
      metric: "system.load.1",
      type: "gauge",
      points: [
        [
          Time.now.to_f,
          1.1,
        ],
      ],
      tags: [
        "test:ExampleMetric",
      ],
    }),
  ],
})
opts = {
  content_encoding: MetricContentEncoding::DEFLATE,
}
p api_instance.submit_metrics(body, opts)
