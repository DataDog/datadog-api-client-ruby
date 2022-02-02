require 'datadog_api_client'

DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:get_slo_history] = true
end

api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
slo_id = 'slo_id_example' # String | The ID of the service level objective object.
from_ts = 789 # Integer | The `from` timestamp for the query window in epoch seconds.
to_ts = 789 # Integer | The `to` timestamp for the query window in epoch seconds.
opts = {
  target: 1.2, # Float | The SLO target. If `target` is passed in, the response will include the remaining error budget and a timeframe value of `custom`.
  apply_correction: true # Boolean | Defaults to `true`. If any SLO corrections are applied and this parameter is set to `false`, then the corrections will not be applied and the SLI values will not be affected.
}

begin
  # Get an SLO's history
  result = api_instance.get_slo_history(slo_id, from_ts, to_ts, opts)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling ServiceLevelObjectivesAPI->get_slo_history: #{e}"
end
