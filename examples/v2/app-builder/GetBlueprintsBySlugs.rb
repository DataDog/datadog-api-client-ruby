# Get Blueprints by Slugs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.get_blueprints_by_slugs("aws-service-manager")
