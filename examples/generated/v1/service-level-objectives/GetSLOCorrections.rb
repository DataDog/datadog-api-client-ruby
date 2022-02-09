require "datadog_api_client"

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_slo_corrections] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = "slo_id_example" # String | The ID of the service level objective object.

begin
  # Get Corrections For an SLO
  result = api_instance.get_slo_corrections(slo_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo_corrections: #{e}"
end
