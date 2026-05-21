# Get Blueprints by Integration ID returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.get_blueprints_by_integration_id("aws")
