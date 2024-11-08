# Run a historical job returns "Status created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.run_historical_job".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::RunHistoricalJobRequest.new({
  data: DatadogAPIClient::V2::RunHistoricalJobRequestData.new({
    type: DatadogAPIClient::V2::RunHistoricalJobRequestDataType::HISTORICALDETECTIONSJOBCREATE,
    attributes: DatadogAPIClient::V2::RunHistoricalJobRequestAttributes.new({
      job_definition: DatadogAPIClient::V2::JobDefinition.new({
        type: "log_detection",
        name: "Excessive number of failed attempts.",
        queries: [
          DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
            query: "source:non_existing_src_weekend",
            aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
            group_by_fields: [],
            distinct_fields: [],
          }),
        ],
        cases: [
          DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
            name: "Condition 1",
            status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
            notifications: [],
            condition: "a > 1",
          }),
        ],
        options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
          keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
          max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
          evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
        }),
        message: "A large number of failed login attempts.",
        tags: [],
        from: 1730387522611,
        to: 1730387532611,
        index: "main",
      }),
    }),
  }),
})
p api_instance.run_historical_job(body)
