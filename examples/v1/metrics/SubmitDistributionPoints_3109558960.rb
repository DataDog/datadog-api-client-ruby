# Submit deflate distribution points returns "Payload accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new

body = DatadogAPIClient::V1::DistributionPointsPayload.new({
  series: [
    DatadogAPIClient::V1::DistributionPointsSeries.new({
      metric: "system.load.1.dist",
      points: [
        [
          Time.now.to_f,
          [
            1.0,
            2.0,
          ],
        ],
      ],
    }),
  ],
})
opts = {
  content_encoding: DistributionPointsContentEncoding::DEFLATE,
}
p api_instance.submit_distribution_points(body, opts)
