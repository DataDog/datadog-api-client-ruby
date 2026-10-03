# Get a configuration file's schema by path returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FleetAutomationAPI.new
p api_instance.get_fleet_config_file_schema_v2("file_path")
