# Update a permanent RUM retention filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateAttributes.new({
      cross_product_sampling: DatadogAPIClient::V2::RumCrossProductSamplingUpdate.new({
        trace_enabled: true,
        trace_sample_rate: 25.0,
      }),
    }),
    id: DatadogAPIClient::V2::RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS,
    type: DatadogAPIClient::V2::RumPermanentRetentionFilterType::PERMANENT_RETENTION_FILTERS,
  }),
})
p api_instance.update_permanent_retention_filter("app_id", RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS, body)
