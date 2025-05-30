# Delete a monitor user template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
api_instance.delete_monitor_user_template("template_id")
