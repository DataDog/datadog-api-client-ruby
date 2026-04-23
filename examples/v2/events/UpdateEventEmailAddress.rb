# Update an event email address returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::EventEmailAddressUpdateRequest.new({
  data: DatadogAPIClient::V2::EventEmailAddressUpdateData.new({
    attributes: DatadogAPIClient::V2::EventEmailAddressUpdateAttributes.new({
      alert_type: DatadogAPIClient::V2::EventEmailAddressAlertType::INFO,
      description: "Updated description for the email address.",
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
p api_instance.update_event_email_address("00000000-0000-0000-0000-000000000001", body)
