# List rows returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ReferenceTablesAPI.new
p api_instance.list_reference_table_rows("id")
