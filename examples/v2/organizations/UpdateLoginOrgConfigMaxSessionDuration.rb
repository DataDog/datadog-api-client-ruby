# Update maximum session duration returns "No Content - The maximum session duration was successfully updated." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_login_org_config_max_session_duration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OrganizationsAPI.new

body = DatadogAPIClient::V2::MaxSessionDurationUpdateRequest.new({
  data: DatadogAPIClient::V2::MaxSessionDurationUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::MaxSessionDurationUpdateAttributes.new({
      max_session_duration: 60,
    }),
    type: DatadogAPIClient::V2::MaxSessionDurationUpdateRequestDataType::MAX_SESSION_DURATION,
  }),
})
api_instance.update_login_org_config_max_session_duration(body)
