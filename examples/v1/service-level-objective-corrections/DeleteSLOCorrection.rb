# Delete an SLO correction returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
api_instance.delete_slo_correction("slo_correction_id")
