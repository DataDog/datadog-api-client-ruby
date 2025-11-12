# Update an On-Call email for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "oncall_email" in the system
ONCALL_EMAIL_DATA_ATTRIBUTES_ADDRESS = ENV["ONCALL_EMAIL_DATA_ATTRIBUTES_ADDRESS"]
ONCALL_EMAIL_DATA_ID = ENV["ONCALL_EMAIL_DATA_ID"]

body = DatadogAPIClient::V2::EmailUpdateRequest.new({
  data: DatadogAPIClient::V2::EmailData.new({
    id: ONCALL_EMAIL_DATA_ID,
    attributes: DatadogAPIClient::V2::EmailAttributes.new({
      active: true,
      address: ONCALL_EMAIL_DATA_ATTRIBUTES_ADDRESS,
      _alias: "Example-On-Call-alias",
      formats: [
        DatadogAPIClient::V2::EmailFormatType::HTML,
      ],
    }),
    type: DatadogAPIClient::V2::EmailType::EMAILS,
  }),
})
p api_instance.update_user_email_notification_channel(USER_DATA_ID, ONCALL_EMAIL_DATA_ID, body)
