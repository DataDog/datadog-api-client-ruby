# Get all service definitions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new
opts = {
  schema_version: ServiceDefinitionSchemaVersions::V2_1,
}
p api_instance.list_service_definitions(opts)
