# Search widgets returns "Successful Response" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new
p api_instance.search_widgets_api_v2_widgets_experience_type_get(WidgetExperienceType::CCM_REPORTS)
