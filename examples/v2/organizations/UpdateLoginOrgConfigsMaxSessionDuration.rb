# Update the maximum session duration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::MaxSessionDurationUpdateRequest.new({
  data: DatadogAPIClient::V2::MaxSessionDurationUpdateData.new({
    attributes: DatadogAPIClient::V2::MaxSessionDurationUpdateAttributes.new({
      max_session_duration: 604800,
    }),
    type: DatadogAPIClient::V2::MaxSessionDurationType::MAX_SESSION_DURATION,
  }),
})
api_instance.update_login_org_configs_max_session_duration(body)
