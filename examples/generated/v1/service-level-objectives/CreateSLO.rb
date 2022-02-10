require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({name: 'Custom Metric SLO', thresholds: [DatadogAPIClient::V1::SLOThreshold.new({target: 99.9, timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS})], type: DatadogAPIClient::V1::SLOType::METRIC}) # ServiceLevelObjectiveRequest | Service level objective request object.

begin
  # Create an SLO object
  result = api_instance.create_slo(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->create_slo: #{e}"
end
