=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

# Common files
require 'datadog_api_client/v1/api_client'
require 'datadog_api_client/v1/api_error'
require 'datadog_api_client/v1/version'
require 'datadog_api_client/v1/configuration'

# Models
require 'datadog_api_client/v1/models/api_error_response'
require 'datadog_api_client/v1/models/aws_account'
require 'datadog_api_client/v1/models/aws_account_and_lambda_request'
require 'datadog_api_client/v1/models/aws_account_create_response'
require 'datadog_api_client/v1/models/aws_account_list_response'
require 'datadog_api_client/v1/models/aws_logs_async_response'
require 'datadog_api_client/v1/models/aws_logs_async_response_errors'
require 'datadog_api_client/v1/models/aws_logs_list_response'
require 'datadog_api_client/v1/models/aws_logs_list_response_lambdas'
require 'datadog_api_client/v1/models/aws_logs_list_services_response'
require 'datadog_api_client/v1/models/aws_logs_services_request'
require 'datadog_api_client/v1/models/access_role'
require 'datadog_api_client/v1/models/alert_graph_widget_definition'
require 'datadog_api_client/v1/models/alert_graph_widget_definition_type'
require 'datadog_api_client/v1/models/alert_value_widget_definition'
require 'datadog_api_client/v1/models/alert_value_widget_definition_type'
require 'datadog_api_client/v1/models/api_key'
require 'datadog_api_client/v1/models/api_key_list_response'
require 'datadog_api_client/v1/models/api_key_response'
require 'datadog_api_client/v1/models/apm_stats_query_column_type'
require 'datadog_api_client/v1/models/apm_stats_query_definition'
require 'datadog_api_client/v1/models/apm_stats_query_row_type'
require 'datadog_api_client/v1/models/application_key'
require 'datadog_api_client/v1/models/application_key_list_response'
require 'datadog_api_client/v1/models/application_key_response'
require 'datadog_api_client/v1/models/authentication_validation_response'
require 'datadog_api_client/v1/models/azure_account'
require 'datadog_api_client/v1/models/cancel_downtimes_by_scope_request'
require 'datadog_api_client/v1/models/canceled_downtimes_ids'
require 'datadog_api_client/v1/models/change_widget_definition'
require 'datadog_api_client/v1/models/change_widget_definition_type'
require 'datadog_api_client/v1/models/change_widget_request'
require 'datadog_api_client/v1/models/check_can_delete_monitor_response'
require 'datadog_api_client/v1/models/check_can_delete_monitor_response_data'
require 'datadog_api_client/v1/models/check_can_delete_slo_response'
require 'datadog_api_client/v1/models/check_can_delete_slo_response_data'
require 'datadog_api_client/v1/models/check_status_widget_definition'
require 'datadog_api_client/v1/models/check_status_widget_definition_type'
require 'datadog_api_client/v1/models/creator'
require 'datadog_api_client/v1/models/dashboard'
require 'datadog_api_client/v1/models/dashboard_delete_response'
require 'datadog_api_client/v1/models/dashboard_layout_type'
require 'datadog_api_client/v1/models/dashboard_list'
require 'datadog_api_client/v1/models/dashboard_list_delete_response'
require 'datadog_api_client/v1/models/dashboard_list_list_response'
require 'datadog_api_client/v1/models/dashboard_summary'
require 'datadog_api_client/v1/models/dashboard_summary_dashboards'
require 'datadog_api_client/v1/models/dashboard_template_variable_preset'
require 'datadog_api_client/v1/models/dashboard_template_variable_preset_value'
require 'datadog_api_client/v1/models/dashboard_template_variables'
require 'datadog_api_client/v1/models/deleted_monitor'
require 'datadog_api_client/v1/models/distribution_widget_definition'
require 'datadog_api_client/v1/models/distribution_widget_definition_type'
require 'datadog_api_client/v1/models/distribution_widget_request'
require 'datadog_api_client/v1/models/downtime'
require 'datadog_api_client/v1/models/downtime_recurrence'
require 'datadog_api_client/v1/models/event'
require 'datadog_api_client/v1/models/event_alert_type'
require 'datadog_api_client/v1/models/event_list_response'
require 'datadog_api_client/v1/models/event_priority'
require 'datadog_api_client/v1/models/event_query_definition'
require 'datadog_api_client/v1/models/event_response'
require 'datadog_api_client/v1/models/event_stream_widget_definition'
require 'datadog_api_client/v1/models/event_stream_widget_definition_type'
require 'datadog_api_client/v1/models/event_timeline_widget_definition'
require 'datadog_api_client/v1/models/event_timeline_widget_definition_type'
require 'datadog_api_client/v1/models/free_text_widget_definition'
require 'datadog_api_client/v1/models/free_text_widget_definition_type'
require 'datadog_api_client/v1/models/gcp_account'
require 'datadog_api_client/v1/models/graph_snapshot'
require 'datadog_api_client/v1/models/group_widget_definition'
require 'datadog_api_client/v1/models/group_widget_definition_type'
require 'datadog_api_client/v1/models/http_method'
require 'datadog_api_client/v1/models/heat_map_widget_definition'
require 'datadog_api_client/v1/models/heat_map_widget_definition_type'
require 'datadog_api_client/v1/models/heat_map_widget_request'
require 'datadog_api_client/v1/models/host'
require 'datadog_api_client/v1/models/host_list_response'
require 'datadog_api_client/v1/models/host_map_request'
require 'datadog_api_client/v1/models/host_map_widget_definition'
require 'datadog_api_client/v1/models/host_map_widget_definition_requests'
require 'datadog_api_client/v1/models/host_map_widget_definition_style'
require 'datadog_api_client/v1/models/host_map_widget_definition_type'
require 'datadog_api_client/v1/models/host_meta'
require 'datadog_api_client/v1/models/host_metrics'
require 'datadog_api_client/v1/models/host_mute_response'
require 'datadog_api_client/v1/models/host_mute_settings'
require 'datadog_api_client/v1/models/host_tags'
require 'datadog_api_client/v1/models/host_totals'
require 'datadog_api_client/v1/models/i_frame_widget_definition'
require 'datadog_api_client/v1/models/i_frame_widget_definition_type'
require 'datadog_api_client/v1/models/ip_prefixes_api'
require 'datadog_api_client/v1/models/ip_prefixes_apm'
require 'datadog_api_client/v1/models/ip_prefixes_agents'
require 'datadog_api_client/v1/models/ip_prefixes_logs'
require 'datadog_api_client/v1/models/ip_prefixes_process'
require 'datadog_api_client/v1/models/ip_prefixes_synthetics'
require 'datadog_api_client/v1/models/ip_prefixes_webhooks'
require 'datadog_api_client/v1/models/ip_ranges'
require 'datadog_api_client/v1/models/idp_form_data'
require 'datadog_api_client/v1/models/idp_response'
require 'datadog_api_client/v1/models/image_widget_definition'
require 'datadog_api_client/v1/models/image_widget_definition_type'
require 'datadog_api_client/v1/models/log'
require 'datadog_api_client/v1/models/log_content'
require 'datadog_api_client/v1/models/log_query_definition'
require 'datadog_api_client/v1/models/log_query_definition_group_by'
require 'datadog_api_client/v1/models/log_query_definition_search'
require 'datadog_api_client/v1/models/log_query_definition_sort'
require 'datadog_api_client/v1/models/log_stream_widget_definition'
require 'datadog_api_client/v1/models/log_stream_widget_definition_type'
require 'datadog_api_client/v1/models/logs_api_error'
require 'datadog_api_client/v1/models/logs_api_error_response'
require 'datadog_api_client/v1/models/logs_arithmetic_processor'
require 'datadog_api_client/v1/models/logs_arithmetic_processor_type'
require 'datadog_api_client/v1/models/logs_attribute_remapper'
require 'datadog_api_client/v1/models/logs_attribute_remapper_type'
require 'datadog_api_client/v1/models/logs_category_processor'
require 'datadog_api_client/v1/models/logs_category_processor_categories'
require 'datadog_api_client/v1/models/logs_category_processor_type'
require 'datadog_api_client/v1/models/logs_date_remapper'
require 'datadog_api_client/v1/models/logs_date_remapper_type'
require 'datadog_api_client/v1/models/logs_exclusion'
require 'datadog_api_client/v1/models/logs_exclusion_filter'
require 'datadog_api_client/v1/models/logs_filter'
require 'datadog_api_client/v1/models/logs_geo_ip_parser'
require 'datadog_api_client/v1/models/logs_geo_ip_parser_type'
require 'datadog_api_client/v1/models/logs_grok_parser'
require 'datadog_api_client/v1/models/logs_grok_parser_rules'
require 'datadog_api_client/v1/models/logs_grok_parser_type'
require 'datadog_api_client/v1/models/logs_index'
require 'datadog_api_client/v1/models/logs_index_list_response'
require 'datadog_api_client/v1/models/logs_indexes_order'
require 'datadog_api_client/v1/models/logs_list_request'
require 'datadog_api_client/v1/models/logs_list_request_time'
require 'datadog_api_client/v1/models/logs_list_response'
require 'datadog_api_client/v1/models/logs_lookup_processor'
require 'datadog_api_client/v1/models/logs_lookup_processor_type'
require 'datadog_api_client/v1/models/logs_message_remapper'
require 'datadog_api_client/v1/models/logs_message_remapper_type'
require 'datadog_api_client/v1/models/logs_pipeline'
require 'datadog_api_client/v1/models/logs_pipeline_processor'
require 'datadog_api_client/v1/models/logs_pipeline_processor_type'
require 'datadog_api_client/v1/models/logs_pipelines_order'
require 'datadog_api_client/v1/models/logs_processor'
require 'datadog_api_client/v1/models/logs_query_compute'
require 'datadog_api_client/v1/models/logs_service_remapper'
require 'datadog_api_client/v1/models/logs_service_remapper_type'
require 'datadog_api_client/v1/models/logs_sort'
require 'datadog_api_client/v1/models/logs_status_remapper'
require 'datadog_api_client/v1/models/logs_status_remapper_type'
require 'datadog_api_client/v1/models/logs_string_builder_processor'
require 'datadog_api_client/v1/models/logs_string_builder_processor_type'
require 'datadog_api_client/v1/models/logs_trace_remapper'
require 'datadog_api_client/v1/models/logs_trace_remapper_type'
require 'datadog_api_client/v1/models/logs_url_parser'
require 'datadog_api_client/v1/models/logs_url_parser_type'
require 'datadog_api_client/v1/models/logs_user_agent_parser'
require 'datadog_api_client/v1/models/logs_user_agent_parser_type'
require 'datadog_api_client/v1/models/metric_metadata'
require 'datadog_api_client/v1/models/metric_search_response'
require 'datadog_api_client/v1/models/metric_search_response_results'
require 'datadog_api_client/v1/models/metrics_list_response'
require 'datadog_api_client/v1/models/metrics_query_response'
require 'datadog_api_client/v1/models/metrics_query_response_series'
require 'datadog_api_client/v1/models/metrics_query_response_unit'
require 'datadog_api_client/v1/models/monitor'
require 'datadog_api_client/v1/models/monitor_device_id'
require 'datadog_api_client/v1/models/monitor_options'
require 'datadog_api_client/v1/models/monitor_options_aggregation'
require 'datadog_api_client/v1/models/monitor_overall_states'
require 'datadog_api_client/v1/models/monitor_state'
require 'datadog_api_client/v1/models/monitor_state_group'
require 'datadog_api_client/v1/models/monitor_summary_widget_definition'
require 'datadog_api_client/v1/models/monitor_summary_widget_definition_type'
require 'datadog_api_client/v1/models/monitor_threshold_window_options'
require 'datadog_api_client/v1/models/monitor_thresholds'
require 'datadog_api_client/v1/models/monitor_type'
require 'datadog_api_client/v1/models/monitor_update_request'
require 'datadog_api_client/v1/models/note_widget_definition'
require 'datadog_api_client/v1/models/note_widget_definition_type'
require 'datadog_api_client/v1/models/organization'
require 'datadog_api_client/v1/models/organization_billing'
require 'datadog_api_client/v1/models/organization_create_body'
require 'datadog_api_client/v1/models/organization_create_response'
require 'datadog_api_client/v1/models/organization_list_response'
require 'datadog_api_client/v1/models/organization_response'
require 'datadog_api_client/v1/models/organization_settings'
require 'datadog_api_client/v1/models/organization_settings_saml'
require 'datadog_api_client/v1/models/organization_settings_saml_autocreate_users_domains'
require 'datadog_api_client/v1/models/organization_settings_saml_idp_initiated_login'
require 'datadog_api_client/v1/models/organization_settings_saml_strict_mode'
require 'datadog_api_client/v1/models/organization_subscription'
require 'datadog_api_client/v1/models/pager_duty_service'
require 'datadog_api_client/v1/models/pager_duty_service_key'
require 'datadog_api_client/v1/models/pager_duty_service_name'
require 'datadog_api_client/v1/models/process_query_definition'
require 'datadog_api_client/v1/models/query_value_widget_definition'
require 'datadog_api_client/v1/models/query_value_widget_definition_type'
require 'datadog_api_client/v1/models/query_value_widget_request'
require 'datadog_api_client/v1/models/slo_bulk_delete_response'
require 'datadog_api_client/v1/models/slo_bulk_delete_response_data'
require 'datadog_api_client/v1/models/slo_bulk_delete_response_errors'
require 'datadog_api_client/v1/models/slo_delete_response'
require 'datadog_api_client/v1/models/slo_error_timeframe'
require 'datadog_api_client/v1/models/slo_history_metrics'
require 'datadog_api_client/v1/models/slo_history_metrics_series'
require 'datadog_api_client/v1/models/slo_history_metrics_series_metadata'
require 'datadog_api_client/v1/models/slo_history_response'
require 'datadog_api_client/v1/models/slo_history_response_data'
require 'datadog_api_client/v1/models/slo_history_response_error'
require 'datadog_api_client/v1/models/slo_history_sli_data'
require 'datadog_api_client/v1/models/slo_list_response'
require 'datadog_api_client/v1/models/slo_response'
require 'datadog_api_client/v1/models/slo_threshold'
require 'datadog_api_client/v1/models/slo_timeframe'
require 'datadog_api_client/v1/models/slo_type'
require 'datadog_api_client/v1/models/slo_type_numeric'
require 'datadog_api_client/v1/models/slo_widget_definition'
require 'datadog_api_client/v1/models/slo_widget_definition_type'
require 'datadog_api_client/v1/models/scatter_plot_request'
require 'datadog_api_client/v1/models/scatter_plot_widget_definition'
require 'datadog_api_client/v1/models/scatter_plot_widget_definition_requests'
require 'datadog_api_client/v1/models/scatter_plot_widget_definition_type'
require 'datadog_api_client/v1/models/service_level_objective'
require 'datadog_api_client/v1/models/service_level_objective_query'
require 'datadog_api_client/v1/models/service_level_objective_request'
require 'datadog_api_client/v1/models/service_map_widget_definition'
require 'datadog_api_client/v1/models/service_map_widget_definition_type'
require 'datadog_api_client/v1/models/service_summary_widget_definition'
require 'datadog_api_client/v1/models/service_summary_widget_definition_type'
require 'datadog_api_client/v1/models/synthetics_api_test_result_data'
require 'datadog_api_client/v1/models/synthetics_api_test_result_full'
require 'datadog_api_client/v1/models/synthetics_api_test_result_full_check'
require 'datadog_api_client/v1/models/synthetics_api_test_result_short'
require 'datadog_api_client/v1/models/synthetics_api_test_result_short_result'
require 'datadog_api_client/v1/models/synthetics_assertion'
require 'datadog_api_client/v1/models/synthetics_assertion_json_path_operator'
require 'datadog_api_client/v1/models/synthetics_assertion_json_path_target'
require 'datadog_api_client/v1/models/synthetics_assertion_json_path_target_target'
require 'datadog_api_client/v1/models/synthetics_assertion_operator'
require 'datadog_api_client/v1/models/synthetics_assertion_target'
require 'datadog_api_client/v1/models/synthetics_assertion_type'
require 'datadog_api_client/v1/models/synthetics_basic_auth'
require 'datadog_api_client/v1/models/synthetics_browser_error'
require 'datadog_api_client/v1/models/synthetics_browser_error_type'
require 'datadog_api_client/v1/models/synthetics_browser_test_result_data'
require 'datadog_api_client/v1/models/synthetics_browser_test_result_full'
require 'datadog_api_client/v1/models/synthetics_browser_test_result_full_check'
require 'datadog_api_client/v1/models/synthetics_browser_test_result_short'
require 'datadog_api_client/v1/models/synthetics_browser_test_result_short_result'
require 'datadog_api_client/v1/models/synthetics_browser_variable'
require 'datadog_api_client/v1/models/synthetics_browser_variable_type'
require 'datadog_api_client/v1/models/synthetics_ci_test'
require 'datadog_api_client/v1/models/synthetics_ci_test_body'
require 'datadog_api_client/v1/models/synthetics_ci_test_metadata'
require 'datadog_api_client/v1/models/synthetics_ci_test_metadata_ci'
require 'datadog_api_client/v1/models/synthetics_ci_test_metadata_git'
require 'datadog_api_client/v1/models/synthetics_check_type'
require 'datadog_api_client/v1/models/synthetics_delete_tests_payload'
require 'datadog_api_client/v1/models/synthetics_delete_tests_response'
require 'datadog_api_client/v1/models/synthetics_delete_tests_response_deleted_tests'
require 'datadog_api_client/v1/models/synthetics_device'
require 'datadog_api_client/v1/models/synthetics_device_id'
require 'datadog_api_client/v1/models/synthetics_error_code'
require 'datadog_api_client/v1/models/synthetics_get_api_test_latest_results_response'
require 'datadog_api_client/v1/models/synthetics_get_browser_test_latest_results_response'
require 'datadog_api_client/v1/models/synthetics_global_variable'
require 'datadog_api_client/v1/models/synthetics_global_variable_value'
require 'datadog_api_client/v1/models/synthetics_list_tests_response'
require 'datadog_api_client/v1/models/synthetics_location'
require 'datadog_api_client/v1/models/synthetics_locations'
require 'datadog_api_client/v1/models/synthetics_playing_tab'
require 'datadog_api_client/v1/models/synthetics_resource'
require 'datadog_api_client/v1/models/synthetics_resource_type'
require 'datadog_api_client/v1/models/synthetics_ssl_certificate'
require 'datadog_api_client/v1/models/synthetics_ssl_certificate_issuer'
require 'datadog_api_client/v1/models/synthetics_ssl_certificate_subject'
require 'datadog_api_client/v1/models/synthetics_step'
require 'datadog_api_client/v1/models/synthetics_step_detail'
require 'datadog_api_client/v1/models/synthetics_step_detail_warnings'
require 'datadog_api_client/v1/models/synthetics_step_type'
require 'datadog_api_client/v1/models/synthetics_test_config'
require 'datadog_api_client/v1/models/synthetics_test_details'
require 'datadog_api_client/v1/models/synthetics_test_details_sub_type'
require 'datadog_api_client/v1/models/synthetics_test_details_type'
require 'datadog_api_client/v1/models/synthetics_test_monitor_status'
require 'datadog_api_client/v1/models/synthetics_test_options'
require 'datadog_api_client/v1/models/synthetics_test_options_monitor_options'
require 'datadog_api_client/v1/models/synthetics_test_options_retry'
require 'datadog_api_client/v1/models/synthetics_test_pause_status'
require 'datadog_api_client/v1/models/synthetics_test_process_status'
require 'datadog_api_client/v1/models/synthetics_test_request'
require 'datadog_api_client/v1/models/synthetics_test_request_certificate'
require 'datadog_api_client/v1/models/synthetics_test_request_certificate_item'
require 'datadog_api_client/v1/models/synthetics_tick_interval'
require 'datadog_api_client/v1/models/synthetics_timing'
require 'datadog_api_client/v1/models/synthetics_trigger_ci_tests_response'
require 'datadog_api_client/v1/models/synthetics_trigger_ci_tests_response_locations'
require 'datadog_api_client/v1/models/synthetics_trigger_ci_tests_response_results'
require 'datadog_api_client/v1/models/synthetics_update_test_pause_status_payload'
require 'datadog_api_client/v1/models/synthetics_warning_type'
require 'datadog_api_client/v1/models/table_widget_cell_display_mode'
require 'datadog_api_client/v1/models/table_widget_definition'
require 'datadog_api_client/v1/models/table_widget_definition_type'
require 'datadog_api_client/v1/models/table_widget_has_search_bar'
require 'datadog_api_client/v1/models/table_widget_request'
require 'datadog_api_client/v1/models/tag_to_hosts'
require 'datadog_api_client/v1/models/target_format_type'
require 'datadog_api_client/v1/models/timeseries_widget_definition'
require 'datadog_api_client/v1/models/timeseries_widget_definition_type'
require 'datadog_api_client/v1/models/timeseries_widget_request'
require 'datadog_api_client/v1/models/timeseries_widget_request_metadata'
require 'datadog_api_client/v1/models/toplist_widget_definition'
require 'datadog_api_client/v1/models/toplist_widget_definition_type'
require 'datadog_api_client/v1/models/toplist_widget_request'
require 'datadog_api_client/v1/models/usage_analyzed_logs_hour'
require 'datadog_api_client/v1/models/usage_analyzed_logs_response'
require 'datadog_api_client/v1/models/usage_billable_summary_body'
require 'datadog_api_client/v1/models/usage_billable_summary_hour'
require 'datadog_api_client/v1/models/usage_billable_summary_keys'
require 'datadog_api_client/v1/models/usage_billable_summary_response'
require 'datadog_api_client/v1/models/usage_custom_reports_attributes'
require 'datadog_api_client/v1/models/usage_custom_reports_data'
require 'datadog_api_client/v1/models/usage_custom_reports_meta'
require 'datadog_api_client/v1/models/usage_custom_reports_page'
require 'datadog_api_client/v1/models/usage_custom_reports_response'
require 'datadog_api_client/v1/models/usage_fargate_hour'
require 'datadog_api_client/v1/models/usage_fargate_response'
require 'datadog_api_client/v1/models/usage_host_hour'
require 'datadog_api_client/v1/models/usage_hosts_response'
require 'datadog_api_client/v1/models/usage_lambda_hour'
require 'datadog_api_client/v1/models/usage_lambda_response'
require 'datadog_api_client/v1/models/usage_logs_by_index_hour'
require 'datadog_api_client/v1/models/usage_logs_by_index_response'
require 'datadog_api_client/v1/models/usage_logs_hour'
require 'datadog_api_client/v1/models/usage_logs_response'
require 'datadog_api_client/v1/models/usage_metric_category'
require 'datadog_api_client/v1/models/usage_network_flows_hour'
require 'datadog_api_client/v1/models/usage_network_flows_response'
require 'datadog_api_client/v1/models/usage_network_hosts_hour'
require 'datadog_api_client/v1/models/usage_network_hosts_response'
require 'datadog_api_client/v1/models/usage_profiling_hour'
require 'datadog_api_client/v1/models/usage_profiling_response'
require 'datadog_api_client/v1/models/usage_reports_type'
require 'datadog_api_client/v1/models/usage_rum_sessions_hour'
require 'datadog_api_client/v1/models/usage_rum_sessions_response'
require 'datadog_api_client/v1/models/usage_snmp_hour'
require 'datadog_api_client/v1/models/usage_snmp_response'
require 'datadog_api_client/v1/models/usage_sort'
require 'datadog_api_client/v1/models/usage_sort_direction'
require 'datadog_api_client/v1/models/usage_specified_custom_reports_attributes'
require 'datadog_api_client/v1/models/usage_specified_custom_reports_data'
require 'datadog_api_client/v1/models/usage_specified_custom_reports_meta'
require 'datadog_api_client/v1/models/usage_specified_custom_reports_page'
require 'datadog_api_client/v1/models/usage_specified_custom_reports_response'
require 'datadog_api_client/v1/models/usage_summary_date'
require 'datadog_api_client/v1/models/usage_summary_date_org'
require 'datadog_api_client/v1/models/usage_summary_response'
require 'datadog_api_client/v1/models/usage_synthetics_api_hour'
require 'datadog_api_client/v1/models/usage_synthetics_api_response'
require 'datadog_api_client/v1/models/usage_synthetics_browser_hour'
require 'datadog_api_client/v1/models/usage_synthetics_browser_response'
require 'datadog_api_client/v1/models/usage_synthetics_hour'
require 'datadog_api_client/v1/models/usage_synthetics_response'
require 'datadog_api_client/v1/models/usage_timeseries_hour'
require 'datadog_api_client/v1/models/usage_timeseries_response'
require 'datadog_api_client/v1/models/usage_top_avg_metrics_hour'
require 'datadog_api_client/v1/models/usage_top_avg_metrics_response'
require 'datadog_api_client/v1/models/usage_trace_hour'
require 'datadog_api_client/v1/models/usage_trace_response'
require 'datadog_api_client/v1/models/usage_tracing_without_limits_hour'
require 'datadog_api_client/v1/models/usage_tracing_without_limits_response'
require 'datadog_api_client/v1/models/user'
require 'datadog_api_client/v1/models/user_disable_response'
require 'datadog_api_client/v1/models/user_list_response'
require 'datadog_api_client/v1/models/user_response'
require 'datadog_api_client/v1/models/widget'
require 'datadog_api_client/v1/models/widget_aggregator'
require 'datadog_api_client/v1/models/widget_axis'
require 'datadog_api_client/v1/models/widget_change_type'
require 'datadog_api_client/v1/models/widget_color_preference'
require 'datadog_api_client/v1/models/widget_comparator'
require 'datadog_api_client/v1/models/widget_compare_to'
require 'datadog_api_client/v1/models/widget_conditional_format'
require 'datadog_api_client/v1/models/widget_custom_link'
require 'datadog_api_client/v1/models/widget_definition'
require 'datadog_api_client/v1/models/widget_display_type'
require 'datadog_api_client/v1/models/widget_event'
require 'datadog_api_client/v1/models/widget_event_size'
require 'datadog_api_client/v1/models/widget_field_sort'
require 'datadog_api_client/v1/models/widget_grouping'
require 'datadog_api_client/v1/models/widget_image_sizing'
require 'datadog_api_client/v1/models/widget_layout'
require 'datadog_api_client/v1/models/widget_layout_type'
require 'datadog_api_client/v1/models/widget_line_type'
require 'datadog_api_client/v1/models/widget_line_width'
require 'datadog_api_client/v1/models/widget_live_span'
require 'datadog_api_client/v1/models/widget_margin'
require 'datadog_api_client/v1/models/widget_marker'
require 'datadog_api_client/v1/models/widget_message_display'
require 'datadog_api_client/v1/models/widget_monitor_summary_display_format'
require 'datadog_api_client/v1/models/widget_monitor_summary_sort'
require 'datadog_api_client/v1/models/widget_node_type'
require 'datadog_api_client/v1/models/widget_order_by'
require 'datadog_api_client/v1/models/widget_palette'
require 'datadog_api_client/v1/models/widget_request_style'
require 'datadog_api_client/v1/models/widget_service_summary_display_format'
require 'datadog_api_client/v1/models/widget_size_format'
require 'datadog_api_client/v1/models/widget_sort'
require 'datadog_api_client/v1/models/widget_style'
require 'datadog_api_client/v1/models/widget_summary_type'
require 'datadog_api_client/v1/models/widget_text_align'
require 'datadog_api_client/v1/models/widget_tick_edge'
require 'datadog_api_client/v1/models/widget_time'
require 'datadog_api_client/v1/models/widget_time_windows'
require 'datadog_api_client/v1/models/widget_view_mode'
require 'datadog_api_client/v1/models/widget_viz_type'

# APIs
require 'datadog_api_client/v1/api/aws_integration_api'
require 'datadog_api_client/v1/api/aws_logs_integration_api'
require 'datadog_api_client/v1/api/authentication_api'
require 'datadog_api_client/v1/api/azure_integration_api'
require 'datadog_api_client/v1/api/dashboard_lists_api'
require 'datadog_api_client/v1/api/dashboards_api'
require 'datadog_api_client/v1/api/downtimes_api'
require 'datadog_api_client/v1/api/events_api'
require 'datadog_api_client/v1/api/gcp_integration_api'
require 'datadog_api_client/v1/api/hosts_api'
require 'datadog_api_client/v1/api/ip_ranges_api'
require 'datadog_api_client/v1/api/key_management_api'
require 'datadog_api_client/v1/api/logs_api'
require 'datadog_api_client/v1/api/logs_indexes_api'
require 'datadog_api_client/v1/api/logs_pipelines_api'
require 'datadog_api_client/v1/api/metrics_api'
require 'datadog_api_client/v1/api/monitors_api'
require 'datadog_api_client/v1/api/organizations_api'
require 'datadog_api_client/v1/api/pager_duty_integration_api'
require 'datadog_api_client/v1/api/service_level_objectives_api'
require 'datadog_api_client/v1/api/snapshots_api'
require 'datadog_api_client/v1/api/synthetics_api'
require 'datadog_api_client/v1/api/tags_api'
require 'datadog_api_client/v1/api/usage_metering_api'
require 'datadog_api_client/v1/api/users_api'

module DatadogAPIClient::V1
  class << self
    # Customize default settings for the SDK using block.
    #   DatadogAPIClient::V1.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
