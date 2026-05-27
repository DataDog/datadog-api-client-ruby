# Update a permanent retention filter returns "Updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumRetentionFiltersPermanentAPI.new

body = DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateRequest.new({
  data: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateData.new({
    id: "default_replays",
    type: DatadogAPIClient::V2::RumPermanentRetentionFilterType::PERMANENT_RETENTION_FILTERS,
    attributes: DatadogAPIClient::V2::RumPermanentRetentionFilterUpdateAttributes.new({
      cross_product_sampling: DatadogAPIClient::V2::RumPermanentCrossProductSamplingUpdate.new({
        trace_sample_rate: 100,
      }),
    }),
  }),
})
p api_instance.update_permanent_retention_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", "default_replays", body)
