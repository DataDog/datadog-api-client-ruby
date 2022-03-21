# Pause or start a test returns "OK - Returns a boolean indicating if the update was successful." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsUpdateTestPauseStatusPayload.new({
  new_status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
})
p api_instance.update_test_pause_status("public_id", body)
