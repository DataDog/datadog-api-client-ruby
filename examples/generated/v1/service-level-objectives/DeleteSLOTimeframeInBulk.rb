require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
body = { key: [DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS] } # Hash<String, Array<SLOTimeframe>> | Delete multiple service level objective objects request body.

begin
  # Bulk Delete SLO Timeframes
  result = api_instance.delete_slo_timeframe_in_bulk(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->delete_slo_timeframe_in_bulk: #{e}"
end
