# Cancels a data deletion request returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataDeletionAPI.new

# there is a valid "deletion_request" in the system
DELETION_REQUEST_DATA_ID = ENV["DELETION_REQUEST_DATA_ID"]
p api_instance.cancel_data_deletion_request(DELETION_REQUEST_DATA_ID)
