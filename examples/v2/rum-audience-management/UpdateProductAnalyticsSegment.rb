# Update a segment returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_product_analytics_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::SegmentUpdateRequest.new({
  data: DatadogAPIClient::V2::SegmentUpdateData.new({
    attributes: DatadogAPIClient::V2::SegmentUpdateAttributes.new({
      description: "Users who viewed the logs page in the last 7 days.",
      name: "High-value users",
    }),
    id: "8a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d",
    type: DatadogAPIClient::V2::SegmentResourceType::SEGMENT,
  }),
})
api_instance.update_product_analytics_segment("8a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d", body)
