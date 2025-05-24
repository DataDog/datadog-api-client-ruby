# Delete a monitor user template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_user_template" in the system
MONITOR_USER_TEMPLATE_DATA_ID = ENV["MONITOR_USER_TEMPLATE_DATA_ID"]
api_instance.delete_monitor_user_template(MONITOR_USER_TEMPLATE_DATA_ID)
