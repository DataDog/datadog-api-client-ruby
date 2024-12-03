# Gets a list of data deletion requests returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new
p api_instance.get_data_deletion_requests()
