# Delete a widget returns "Successful Response" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new
api_instance.delete_widget_api_v2_widgets_experience_type_uuid_delete("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", WidgetExperienceType::CCM_REPORTS)
