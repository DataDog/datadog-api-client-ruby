# Submit distribution points returns "Payload accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new

body = DatadogAPIClient::V1::DistributionPointsPayload.new({
  series: [
    DatadogAPIClient::V1::DistributionPointsSeries.new({
      metric: "system.load.1.dist",
      points: [
        [
          Time.now,
          [
            1.0,
            2.0,
          ],
        ],
      ],
    }),
  ],
})
p api_instance.submit_distribution_points(body)
