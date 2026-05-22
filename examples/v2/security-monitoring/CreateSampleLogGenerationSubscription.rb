# Subscribe to sample log generation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_sample_log_generation_subscription".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SampleLogGenerationSubscriptionCreateRequest.new({
  data: DatadogAPIClient::V2::SampleLogGenerationSubscriptionCreateData.new({
    attributes: DatadogAPIClient::V2::SampleLogGenerationSubscriptionCreateAttributes.new({
      content_pack_id: "aws-cloudtrail",
      duration: DatadogAPIClient::V2::SampleLogGenerationDuration::THREE_DAYS,
    }),
    type: DatadogAPIClient::V2::SampleLogGenerationSubscriptionRequestType::SUBSCRIPTION_REQUESTS,
  }),
})
p api_instance.create_sample_log_generation_subscription(body)
