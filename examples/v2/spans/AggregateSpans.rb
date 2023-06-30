# Aggregate spans returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansAPI.new

body = DatadogAPIClient::V2::SpansAggregateRequest.new({
  data: DatadogAPIClient::V2::SpansAggregateData.new({
    attributes: DatadogAPIClient::V2::SpansAggregateRequestAttributes.new({
      compute: [
        DatadogAPIClient::V2::SpansCompute.new({
          aggregation: DatadogAPIClient::V2::SpansAggregationFunction::COUNT,
          interval: "5m",
          type: DatadogAPIClient::V2::SpansComputeType::TIMESERIES,
        }),
      ],
      filter: DatadogAPIClient::V2::SpansQueryFilter.new({
        from: "now-15m",
        query: "*",
        to: "now",
      }),
    }),
    type: DatadogAPIClient::V2::SpansAggregateRequestType::AGGREGATE_REQUEST,
  }),
})
p api_instance.aggregate_spans(body)
