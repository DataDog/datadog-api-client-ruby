# Search widgets returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new
p api_instance.search_widgets(WidgetExperienceType::CCM_REPORTS)
