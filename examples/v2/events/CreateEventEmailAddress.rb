# Create an event email address returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::EventEmailAddressCreateRequest.new({
  data: DatadogAPIClient::V2::EventEmailAddressCreateData.new({
    attributes: DatadogAPIClient::V2::EventEmailAddressCreateAttributes.new({
      alert_type: DatadogAPIClient::V2::EventEmailAddressAlertType::INFO,
      description: "Email address for production alerts.",
      format: DatadogAPIClient::V2::EventEmailAddressFormat::JSON,
      notify_handles: [
        "@slack-my-channel",
      ],
      tags: [
        "env:production",
        "team:my-team",
      ],
    }),
    type: DatadogAPIClient::V2::EventEmailAddressResourceType::EVENT_EMAILS,
  }),
})
p api_instance.create_event_email_address(body)
