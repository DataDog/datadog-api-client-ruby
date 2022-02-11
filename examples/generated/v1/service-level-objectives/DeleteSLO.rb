require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective.
opts = {
  force: 'force_example' # String | Delete the monitor even if it's referenced by other resources (for example SLO, composite monitor).
}

begin
  # Delete an SLO
  result = api_instance.delete_slo(slo_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo: #{e}"
end
