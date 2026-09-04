# Investigate a timeseries anomaly returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_timeseries_anomaly_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TimeseriesAnomalyInvestigationsAPI.new

body = DatadogAPIClient::V2::TimeseriesAnomalyInvestigationRequest.new({
  data: DatadogAPIClient::V2::TimeseriesAnomalyInvestigationRequestData.new({
    attributes: DatadogAPIClient::V2::TimeseriesAnomalyInvestigationRequestAttributes.new({
      requests: [
        DatadogAPIClient::V2::TimeseriesAnomalyInvestigationTimeseriesRequest.new({
          formulas: [
            DatadogAPIClient::V2::TimeseriesAnomalyInvestigationFormula.new({
              formula: "anomalies(query1, 'agile', 3)",
            }),
          ],
          from: 1754406000000,
          queries: [
            DatadogAPIClient::V2::TimeseriesAnomalyInvestigationMetricQuery.new({
              data_source: DatadogAPIClient::V2::TimeseriesAnomalyInvestigationDataSource::METRICS,
              name: "query1",
              query: "avg:system.cpu.user{env:prod} by {service}",
            }),
          ],
          to: 1754423940000,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::TimeseriesAnomalyInvestigationType::TIMESERIES_ANOMALY_INVESTIGATION,
  }),
})
p api_instance.create_timeseries_anomaly_investigation(body)
