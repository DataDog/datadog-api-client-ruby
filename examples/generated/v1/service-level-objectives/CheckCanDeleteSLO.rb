require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
ids = 'id1, id2, id3' # String | A comma separated list of the IDs of the service level objectives objects.

begin
  # Check if SLOs can be safely deleted
  result = api_instance.check_can_delete_slo(ids)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->check_can_delete_slo: #{e}"
end
