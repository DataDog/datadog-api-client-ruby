# Delete a Data Access Control dataset returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new

# there is a valid "dataset" in the system
DATASET_DATA_ID = ENV["DATASET_DATA_ID"]
api_instance.delete_dataset(DATASET_DATA_ID)
