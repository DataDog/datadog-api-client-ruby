require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the Synthetic test to update.
body = DatadogAPIClient::V1::SyntheticsUpdateTestPauseStatusPayload.new # SyntheticsUpdateTestPauseStatusPayload | Status to set the given Synthetic test to.

begin
  # Pause or start a test
  result = api_instance.update_test_pause_status(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_test_pause_status: #{e}"
end
