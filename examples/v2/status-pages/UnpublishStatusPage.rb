# Unpublish status page returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new
api_instance.unpublish_status_page("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
