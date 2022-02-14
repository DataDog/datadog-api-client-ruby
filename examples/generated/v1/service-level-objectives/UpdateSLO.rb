require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = "slo_id_example" # String | The ID of the service level objective object.
body = DatadogAPIClient::V1::ServiceLevelObjective.new({ name: "Custom Metric SLO", thresholds: [DatadogAPIClient::V1::SLOThreshold.new({ target: 99.9, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS })], type: DatadogAPIClient::V1::SLOType::METRIC }) # ServiceLevelObjective | The edited service level objective request object.

begin
  # Update an SLO
  result = api_instance.update_slo(slo_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->update_slo: #{e}"
end
