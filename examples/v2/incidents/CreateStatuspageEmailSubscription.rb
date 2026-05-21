# Create a status page email subscription returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_statuspage_email_subscription".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentStatuspageSubscriptionRequest.new({
  data: DatadogAPIClient::V2::IncidentStatuspageSubscriptionDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentStatuspageSubscriptionDataAttributesRequest.new({
      email: "user@example.com",
    }),
    type: DatadogAPIClient::V2::IncidentStatuspageSubscriptionType::STATUSPAGE_EMAIL_SUBSCRIPTION,
  }),
})
p api_instance.create_statuspage_email_subscription("page_id", body)
