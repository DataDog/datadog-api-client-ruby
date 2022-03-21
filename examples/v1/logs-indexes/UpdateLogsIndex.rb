# Update an index returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsIndexesAPI.new

body = DatadogAPIClient::V1::LogsIndexUpdateRequest.new({
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
})
p api_instance.update_logs_index("name", body)
