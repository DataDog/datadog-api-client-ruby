require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = "slo_id_example" # String | The ID of the service level objective object.
opts = {
  with_configured_alert_ids: true, # Boolean | Get the IDs of SLO monitors that reference this SLO.
}

begin
  # Get an SLO's details
  result = api_instance.get_slo(slo_id, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo: #{e}"
end
