# Create an on-call event email address returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_on_call_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new

body = DatadogAPIClient::V2::OnCallEventEmailAddressCreateRequest.new({
  data: DatadogAPIClient::V2::OnCallEventEmailAddressCreateData.new({
    attributes: DatadogAPIClient::V2::OnCallEventEmailAddressCreateAttributes.new({
      alert_type: DatadogAPIClient::V2::EventEmailAddressAlertType::INFO,
      description: "On-call email address for my team.",
      format: DatadogAPIClient::V2::EventEmailAddressFormat::JSON,
      tags: [
        "env:production",
        "team:my-team",
      ],
      team_handle: "my-team",
    }),
    type: DatadogAPIClient::V2::EventEmailAddressResourceType::EVENT_EMAILS,
  }),
})
p api_instance.create_on_call_event_email_address(body)
