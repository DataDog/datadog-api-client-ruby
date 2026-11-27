# Update a permanent RUM retention filter returns "Updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]

body = DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateData.new({
    id: DatadogAPIClient::V2::RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS,
    type: DatadogAPIClient::V2::RumPermanentRetentionFilterType::PERMANENT_RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateAttributes.new({
      cross_product_sampling: DatadogAPIClient::V2::RumCrossProductSamplingUpdate.new({
        trace_enabled: true,
        trace_sample_rate: 25.0,
      }),
    }),
  }),
})
p api_instance.update_permanent_retention_filter(RUM_APPLICATION_DATA_ID, RumPermanentRetentionFilterID::SYNTHETICS_SESSIONS, body)
