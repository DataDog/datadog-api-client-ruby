# Create an index returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

body = DatadogAPIClient::V1::LogsIndex.new({
  daily_limit: 300000000,
  daily_limit_reset: DatadogAPIClient::V1::LogsDailyLimitReset.new({
    reset_time: "14:00",
    reset_utc_offset: "+02:00",
  }),
  daily_limit_warning_threshold_percentage: 70,
  exclusion_filters: [
    DatadogAPIClient::V1::LogsExclusion.new({
      filter: DatadogAPIClient::V1::LogsExclusionFilter.new({
        query: "*",
        sample_rate: 1.0,
      }),
      name: "payment",
    }),
  ],
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "main",
  num_retention_days: 15,
})
p api_instance.create_logs_index(body)
