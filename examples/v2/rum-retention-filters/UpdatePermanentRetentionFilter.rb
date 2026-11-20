# Update a permanent RUM retention filter returns "Updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionFiltersAPI.new

body = DatadogAPIClient::V2::RUMPermanentRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMPermanentRetentionFilterUpdateData.new({
    attributes: DatadogAPIClient::V2::RUMPermanentRetentionFilterUpdateAttributes.new({
      cross_product_sampling: DatadogAPIClient::V2::RUMCrossProductSamplingUpdate.new({
        trace_enabled: true,
        trace_sample_rate: 25.0,
      }),
    }),
    id: DatadogAPIClient::V2::RUMPermanentRetentionFilterID::SYNTHETICS_SESSIONS,
    type: DatadogAPIClient::V2::RUMPermanentRetentionFilterType::PERMANENT_RETENTION_FILTERS,
  }),
})
p api_instance.update_permanent_retention_filter("app_id", RUMPermanentRetentionFilterID::SYNTHETICS_SESSIONS, body)
