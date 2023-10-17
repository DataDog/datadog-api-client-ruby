# Delete an application key returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "application_key" in the system
APPLICATION_KEY_DATA_ID = ENV["APPLICATION_KEY_DATA_ID"]
api_instance.delete_application_key(APPLICATION_KEY_DATA_ID)
