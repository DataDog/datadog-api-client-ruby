# Bulk subscribe to sample log generation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.bulk_create_sample_log_generation_subscriptions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SampleLogGenerationBulkSubscriptionRequest.new({
  data: DatadogAPIClient::V2::SampleLogGenerationBulkSubscriptionData.new({
    attributes: DatadogAPIClient::V2::SampleLogGenerationBulkSubscriptionAttributes.new({
      content_pack_ids: [
        "aws-cloudtrail",
      ],
      duration: DatadogAPIClient::V2::SampleLogGenerationDuration::THREE_DAYS,
    }),
    type: DatadogAPIClient::V2::SampleLogGenerationBulkSubscriptionRequestType::BULK_SUBSCRIPTION_REQUESTS,
  }),
})
p api_instance.bulk_create_sample_log_generation_subscriptions(body)
