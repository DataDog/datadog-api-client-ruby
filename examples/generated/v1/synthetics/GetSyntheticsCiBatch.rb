require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
batch_id = "batch_id_example" # String | The ID of the batch.

begin
  # Get details of batch
  result = api_instance.get_synthetics_ci_batch(batch_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_synthetics_ci_batch: #{e}"
end
