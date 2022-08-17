# Delete a RUM application returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

# there is a valid "rum_application" in the system
RUM_APPLICATION_DATA_ID = ENV["RUM_APPLICATION_DATA_ID"]
api_instance.delete_rum_application(RUM_APPLICATION_DATA_ID)
