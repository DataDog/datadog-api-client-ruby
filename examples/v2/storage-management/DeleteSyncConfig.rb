# Delete a Storage Management configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StorageManagementAPI.new
api_instance.delete_sync_config("id")
