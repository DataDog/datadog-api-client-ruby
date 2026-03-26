# Get a widget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new
p api_instance.get_widget(WidgetExperienceType::CCM_REPORTS, "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
