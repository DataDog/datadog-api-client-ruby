# Delete datastore returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ActionsDatastoresAPI.new

# a "datastore" is created in the system
CREATED_DATASTORE_DATA_ID = ENV["CREATED_DATASTORE_DATA_ID"]
p api_instance.delete_datastore(CREATED_DATASTORE_DATA_ID)
