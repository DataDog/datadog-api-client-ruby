# Update a hardcoded retention filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersHardcodedAPI.new

body = DatadogAPIClient::V2::RumHardcodedRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumHardcodedRetentionFilterUpdateData.new({
    id: "REPLACE.ME",
    type: DatadogAPIClient::V2::RumHardcodedRetentionFilterType::HARDCODED_RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RumHardcodedRetentionFilterUpdateAttributes.new({
      cross_product_sampling: DatadogAPIClient::V2::RumHardcodedCrossProductSamplingUpdate.new({
        session_replay_sample_rate: 50.0,
        session_replay_enabled: true,
      }),
    }),
  }),
})
p api_instance.update_hardcoded_retention_filter("Example-RUM-Retention-Filters-Hardcoded", "Example-RUM-Retention-Filters-Hardcoded", body)
