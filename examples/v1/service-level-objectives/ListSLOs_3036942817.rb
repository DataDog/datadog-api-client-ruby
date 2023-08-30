# Get all SLOs returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
opts = {
  limit: 2,
}
api_instance.list_slos_with_pagination(opts) { |item| puts item }
