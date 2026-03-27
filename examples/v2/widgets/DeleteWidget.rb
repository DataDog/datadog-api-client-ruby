# Delete a widget returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new
api_instance.delete_widget(WidgetExperienceType::CCM_REPORTS, "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
