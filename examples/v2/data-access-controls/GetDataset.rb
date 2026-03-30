# Get a Data Access Control dataset by ID returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DataAccessControlsAPI.new

# there is a valid "dataset" in the system
DATASET_DATA_ID = ENV["DATASET_DATA_ID"]
p api_instance.get_dataset(DATASET_DATA_ID)
