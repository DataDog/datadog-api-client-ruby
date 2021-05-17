=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

# Common files
require 'datadog_api_client/version'
require 'datadog_api_client/v2/api_client'
require 'datadog_api_client/v2/api_error'
require 'datadog_api_client/v2/configuration'

# Models
require 'datadog_api_client/v2/models/api_error_response'
require 'datadog_api_client/v2/models/api_key_create_attributes'
require 'datadog_api_client/v2/models/api_key_create_data'
require 'datadog_api_client/v2/models/api_key_create_request'
require 'datadog_api_client/v2/models/api_key_relationships'
require 'datadog_api_client/v2/models/api_key_response'
require 'datadog_api_client/v2/models/api_key_response_included_item'
require 'datadog_api_client/v2/models/api_key_update_attributes'
require 'datadog_api_client/v2/models/api_key_update_data'
require 'datadog_api_client/v2/models/api_key_update_request'
require 'datadog_api_client/v2/models/api_keys_response'
require 'datadog_api_client/v2/models/api_keys_sort'
require 'datadog_api_client/v2/models/api_keys_type'
require 'datadog_api_client/v2/models/application_key_create_attributes'
require 'datadog_api_client/v2/models/application_key_create_data'
require 'datadog_api_client/v2/models/application_key_create_request'
require 'datadog_api_client/v2/models/application_key_relationships'
require 'datadog_api_client/v2/models/application_key_response'
require 'datadog_api_client/v2/models/application_key_response_included_item'
require 'datadog_api_client/v2/models/application_key_update_attributes'
require 'datadog_api_client/v2/models/application_key_update_data'
require 'datadog_api_client/v2/models/application_key_update_request'
require 'datadog_api_client/v2/models/application_keys_sort'
require 'datadog_api_client/v2/models/application_keys_type'
require 'datadog_api_client/v2/models/creator'
require 'datadog_api_client/v2/models/dashboard_list_add_items_request'
require 'datadog_api_client/v2/models/dashboard_list_add_items_response'
require 'datadog_api_client/v2/models/dashboard_list_delete_items_request'
require 'datadog_api_client/v2/models/dashboard_list_delete_items_response'
require 'datadog_api_client/v2/models/dashboard_list_item'
require 'datadog_api_client/v2/models/dashboard_list_item_request'
require 'datadog_api_client/v2/models/dashboard_list_item_response'
require 'datadog_api_client/v2/models/dashboard_list_items'
require 'datadog_api_client/v2/models/dashboard_list_update_items_request'
require 'datadog_api_client/v2/models/dashboard_list_update_items_response'
require 'datadog_api_client/v2/models/dashboard_type'
require 'datadog_api_client/v2/models/full_api_key'
require 'datadog_api_client/v2/models/full_api_key_attributes'
require 'datadog_api_client/v2/models/full_application_key'
require 'datadog_api_client/v2/models/full_application_key_attributes'
require 'datadog_api_client/v2/models/incident_create_attributes'
require 'datadog_api_client/v2/models/incident_create_data'
require 'datadog_api_client/v2/models/incident_create_relationships'
require 'datadog_api_client/v2/models/incident_create_request'
require 'datadog_api_client/v2/models/incident_field_attributes'
require 'datadog_api_client/v2/models/incident_field_attributes_multiple_value'
require 'datadog_api_client/v2/models/incident_field_attributes_single_value'
require 'datadog_api_client/v2/models/incident_field_attributes_single_value_type'
require 'datadog_api_client/v2/models/incident_field_attributes_value_type'
require 'datadog_api_client/v2/models/incident_integration_metadata_type'
require 'datadog_api_client/v2/models/incident_postmortem_type'
require 'datadog_api_client/v2/models/incident_related_object'
require 'datadog_api_client/v2/models/incident_response'
require 'datadog_api_client/v2/models/incident_response_attributes'
require 'datadog_api_client/v2/models/incident_response_data'
require 'datadog_api_client/v2/models/incident_response_included_item'
require 'datadog_api_client/v2/models/incident_response_relationships'
require 'datadog_api_client/v2/models/incident_service_create_attributes'
require 'datadog_api_client/v2/models/incident_service_create_data'
require 'datadog_api_client/v2/models/incident_service_create_request'
require 'datadog_api_client/v2/models/incident_service_included_items'
require 'datadog_api_client/v2/models/incident_service_relationships'
require 'datadog_api_client/v2/models/incident_service_response'
require 'datadog_api_client/v2/models/incident_service_response_attributes'
require 'datadog_api_client/v2/models/incident_service_response_data'
require 'datadog_api_client/v2/models/incident_service_type'
require 'datadog_api_client/v2/models/incident_service_update_attributes'
require 'datadog_api_client/v2/models/incident_service_update_data'
require 'datadog_api_client/v2/models/incident_service_update_request'
require 'datadog_api_client/v2/models/incident_services_response'
require 'datadog_api_client/v2/models/incident_services_response_meta'
require 'datadog_api_client/v2/models/incident_services_response_meta_pagination'
require 'datadog_api_client/v2/models/incident_team_create_attributes'
require 'datadog_api_client/v2/models/incident_team_create_data'
require 'datadog_api_client/v2/models/incident_team_create_request'
require 'datadog_api_client/v2/models/incident_team_included_items'
require 'datadog_api_client/v2/models/incident_team_relationships'
require 'datadog_api_client/v2/models/incident_team_response'
require 'datadog_api_client/v2/models/incident_team_response_attributes'
require 'datadog_api_client/v2/models/incident_team_response_data'
require 'datadog_api_client/v2/models/incident_team_type'
require 'datadog_api_client/v2/models/incident_team_update_attributes'
require 'datadog_api_client/v2/models/incident_team_update_data'
require 'datadog_api_client/v2/models/incident_team_update_request'
require 'datadog_api_client/v2/models/incident_teams_response'
require 'datadog_api_client/v2/models/incident_timeline_cell_create_attributes'
require 'datadog_api_client/v2/models/incident_timeline_cell_markdown_content_type'
require 'datadog_api_client/v2/models/incident_timeline_cell_markdown_create_attributes'
require 'datadog_api_client/v2/models/incident_timeline_cell_markdown_create_attributes_content'
require 'datadog_api_client/v2/models/incident_type'
require 'datadog_api_client/v2/models/incident_update_attributes'
require 'datadog_api_client/v2/models/incident_update_data'
require 'datadog_api_client/v2/models/incident_update_relationships'
require 'datadog_api_client/v2/models/incident_update_request'
require 'datadog_api_client/v2/models/incidents_response'
require 'datadog_api_client/v2/models/list_application_keys_response'
require 'datadog_api_client/v2/models/log'
require 'datadog_api_client/v2/models/log_attributes'
require 'datadog_api_client/v2/models/log_type'
require 'datadog_api_client/v2/models/logs_aggregate_bucket'
require 'datadog_api_client/v2/models/logs_aggregate_bucket_value'
require 'datadog_api_client/v2/models/logs_aggregate_bucket_value_timeseries_point'
require 'datadog_api_client/v2/models/logs_aggregate_request'
require 'datadog_api_client/v2/models/logs_aggregate_request_page'
require 'datadog_api_client/v2/models/logs_aggregate_response'
require 'datadog_api_client/v2/models/logs_aggregate_response_data'
require 'datadog_api_client/v2/models/logs_aggregate_response_status'
require 'datadog_api_client/v2/models/logs_aggregate_sort'
require 'datadog_api_client/v2/models/logs_aggregate_sort_type'
require 'datadog_api_client/v2/models/logs_aggregation_function'
require 'datadog_api_client/v2/models/logs_archive'
require 'datadog_api_client/v2/models/logs_archive_attributes'
require 'datadog_api_client/v2/models/logs_archive_create_request'
require 'datadog_api_client/v2/models/logs_archive_create_request_attributes'
require 'datadog_api_client/v2/models/logs_archive_create_request_definition'
require 'datadog_api_client/v2/models/logs_archive_create_request_destination'
require 'datadog_api_client/v2/models/logs_archive_definition'
require 'datadog_api_client/v2/models/logs_archive_destination'
require 'datadog_api_client/v2/models/logs_archive_destination_azure'
require 'datadog_api_client/v2/models/logs_archive_destination_azure_type'
require 'datadog_api_client/v2/models/logs_archive_destination_gcs'
require 'datadog_api_client/v2/models/logs_archive_destination_gcs_type'
require 'datadog_api_client/v2/models/logs_archive_destination_s3'
require 'datadog_api_client/v2/models/logs_archive_destination_s3_type'
require 'datadog_api_client/v2/models/logs_archive_integration_azure'
require 'datadog_api_client/v2/models/logs_archive_integration_gcs'
require 'datadog_api_client/v2/models/logs_archive_integration_s3'
require 'datadog_api_client/v2/models/logs_archive_order'
require 'datadog_api_client/v2/models/logs_archive_order_attributes'
require 'datadog_api_client/v2/models/logs_archive_order_definition'
require 'datadog_api_client/v2/models/logs_archive_order_definition_type'
require 'datadog_api_client/v2/models/logs_archive_state'
require 'datadog_api_client/v2/models/logs_archives'
require 'datadog_api_client/v2/models/logs_compute'
require 'datadog_api_client/v2/models/logs_compute_type'
require 'datadog_api_client/v2/models/logs_group_by'
require 'datadog_api_client/v2/models/logs_group_by_histogram'
require 'datadog_api_client/v2/models/logs_group_by_missing'
require 'datadog_api_client/v2/models/logs_group_by_total'
require 'datadog_api_client/v2/models/logs_list_request'
require 'datadog_api_client/v2/models/logs_list_request_page'
require 'datadog_api_client/v2/models/logs_list_response'
require 'datadog_api_client/v2/models/logs_list_response_links'
require 'datadog_api_client/v2/models/logs_metric_compute'
require 'datadog_api_client/v2/models/logs_metric_compute_aggregation_type'
require 'datadog_api_client/v2/models/logs_metric_create_attributes'
require 'datadog_api_client/v2/models/logs_metric_create_data'
require 'datadog_api_client/v2/models/logs_metric_create_request'
require 'datadog_api_client/v2/models/logs_metric_filter'
require 'datadog_api_client/v2/models/logs_metric_group_by'
require 'datadog_api_client/v2/models/logs_metric_response'
require 'datadog_api_client/v2/models/logs_metric_response_attributes'
require 'datadog_api_client/v2/models/logs_metric_response_compute'
require 'datadog_api_client/v2/models/logs_metric_response_compute_aggregation_type'
require 'datadog_api_client/v2/models/logs_metric_response_data'
require 'datadog_api_client/v2/models/logs_metric_response_filter'
require 'datadog_api_client/v2/models/logs_metric_response_group_by'
require 'datadog_api_client/v2/models/logs_metric_type'
require 'datadog_api_client/v2/models/logs_metric_update_attributes'
require 'datadog_api_client/v2/models/logs_metric_update_data'
require 'datadog_api_client/v2/models/logs_metric_update_request'
require 'datadog_api_client/v2/models/logs_metrics_response'
require 'datadog_api_client/v2/models/logs_query_filter'
require 'datadog_api_client/v2/models/logs_query_options'
require 'datadog_api_client/v2/models/logs_response_metadata'
require 'datadog_api_client/v2/models/logs_response_metadata_page'
require 'datadog_api_client/v2/models/logs_sort'
require 'datadog_api_client/v2/models/logs_sort_order'
require 'datadog_api_client/v2/models/logs_warning'
require 'datadog_api_client/v2/models/metric'
require 'datadog_api_client/v2/models/metric_all_tags'
require 'datadog_api_client/v2/models/metric_all_tags_attributes'
require 'datadog_api_client/v2/models/metric_all_tags_response'
require 'datadog_api_client/v2/models/metric_distinct_volume'
require 'datadog_api_client/v2/models/metric_distinct_volume_attributes'
require 'datadog_api_client/v2/models/metric_distinct_volume_type'
require 'datadog_api_client/v2/models/metric_ingested_indexed_volume'
require 'datadog_api_client/v2/models/metric_ingested_indexed_volume_attributes'
require 'datadog_api_client/v2/models/metric_ingested_indexed_volume_type'
require 'datadog_api_client/v2/models/metric_tag_configuration'
require 'datadog_api_client/v2/models/metric_tag_configuration_attributes'
require 'datadog_api_client/v2/models/metric_tag_configuration_create_attributes'
require 'datadog_api_client/v2/models/metric_tag_configuration_create_data'
require 'datadog_api_client/v2/models/metric_tag_configuration_create_request'
require 'datadog_api_client/v2/models/metric_tag_configuration_metric_types'
require 'datadog_api_client/v2/models/metric_tag_configuration_response'
require 'datadog_api_client/v2/models/metric_tag_configuration_type'
require 'datadog_api_client/v2/models/metric_tag_configuration_update_attributes'
require 'datadog_api_client/v2/models/metric_tag_configuration_update_data'
require 'datadog_api_client/v2/models/metric_tag_configuration_update_request'
require 'datadog_api_client/v2/models/metric_type'
require 'datadog_api_client/v2/models/metric_volumes'
require 'datadog_api_client/v2/models/metric_volumes_response'
require 'datadog_api_client/v2/models/metrics_and_metric_tag_configurations'
require 'datadog_api_client/v2/models/metrics_and_metric_tag_configurations_response'
require 'datadog_api_client/v2/models/organization'
require 'datadog_api_client/v2/models/organization_attributes'
require 'datadog_api_client/v2/models/organizations_type'
require 'datadog_api_client/v2/models/pagination'
require 'datadog_api_client/v2/models/partial_api_key'
require 'datadog_api_client/v2/models/partial_api_key_attributes'
require 'datadog_api_client/v2/models/partial_application_key'
require 'datadog_api_client/v2/models/partial_application_key_attributes'
require 'datadog_api_client/v2/models/permission'
require 'datadog_api_client/v2/models/permission_attributes'
require 'datadog_api_client/v2/models/permissions_response'
require 'datadog_api_client/v2/models/permissions_type'
require 'datadog_api_client/v2/models/process_summaries_meta'
require 'datadog_api_client/v2/models/process_summaries_meta_page'
require 'datadog_api_client/v2/models/process_summaries_response'
require 'datadog_api_client/v2/models/process_summary'
require 'datadog_api_client/v2/models/process_summary_attributes'
require 'datadog_api_client/v2/models/process_summary_type'
require 'datadog_api_client/v2/models/query_sort_order'
require 'datadog_api_client/v2/models/relationship_to_incident_integration_metadata_data'
require 'datadog_api_client/v2/models/relationship_to_incident_integration_metadatas'
require 'datadog_api_client/v2/models/relationship_to_incident_postmortem'
require 'datadog_api_client/v2/models/relationship_to_incident_postmortem_data'
require 'datadog_api_client/v2/models/relationship_to_organization'
require 'datadog_api_client/v2/models/relationship_to_organization_data'
require 'datadog_api_client/v2/models/relationship_to_organizations'
require 'datadog_api_client/v2/models/relationship_to_permission'
require 'datadog_api_client/v2/models/relationship_to_permission_data'
require 'datadog_api_client/v2/models/relationship_to_permissions'
require 'datadog_api_client/v2/models/relationship_to_role'
require 'datadog_api_client/v2/models/relationship_to_role_data'
require 'datadog_api_client/v2/models/relationship_to_roles'
require 'datadog_api_client/v2/models/relationship_to_user'
require 'datadog_api_client/v2/models/relationship_to_user_data'
require 'datadog_api_client/v2/models/relationship_to_users'
require 'datadog_api_client/v2/models/response_meta_attributes'
require 'datadog_api_client/v2/models/role'
require 'datadog_api_client/v2/models/role_attributes'
require 'datadog_api_client/v2/models/role_create_attributes'
require 'datadog_api_client/v2/models/role_create_data'
require 'datadog_api_client/v2/models/role_create_request'
require 'datadog_api_client/v2/models/role_create_response'
require 'datadog_api_client/v2/models/role_create_response_data'
require 'datadog_api_client/v2/models/role_relationships'
require 'datadog_api_client/v2/models/role_response'
require 'datadog_api_client/v2/models/role_response_relationships'
require 'datadog_api_client/v2/models/role_update_attributes'
require 'datadog_api_client/v2/models/role_update_data'
require 'datadog_api_client/v2/models/role_update_request'
require 'datadog_api_client/v2/models/role_update_response'
require 'datadog_api_client/v2/models/role_update_response_data'
require 'datadog_api_client/v2/models/roles_response'
require 'datadog_api_client/v2/models/roles_sort'
require 'datadog_api_client/v2/models/roles_type'
require 'datadog_api_client/v2/models/security_filter'
require 'datadog_api_client/v2/models/security_filter_attributes'
require 'datadog_api_client/v2/models/security_filter_create_attributes'
require 'datadog_api_client/v2/models/security_filter_create_data'
require 'datadog_api_client/v2/models/security_filter_create_request'
require 'datadog_api_client/v2/models/security_filter_delete_response'
require 'datadog_api_client/v2/models/security_filter_exclusion_filter'
require 'datadog_api_client/v2/models/security_filter_exclusion_filter_response'
require 'datadog_api_client/v2/models/security_filter_filtered_data_type'
require 'datadog_api_client/v2/models/security_filter_meta'
require 'datadog_api_client/v2/models/security_filter_response'
require 'datadog_api_client/v2/models/security_filter_type'
require 'datadog_api_client/v2/models/security_filter_update_attributes'
require 'datadog_api_client/v2/models/security_filter_update_data'
require 'datadog_api_client/v2/models/security_filter_update_request'
require 'datadog_api_client/v2/models/security_filters_response'
require 'datadog_api_client/v2/models/security_monitoring_filter'
require 'datadog_api_client/v2/models/security_monitoring_filter_action'
require 'datadog_api_client/v2/models/security_monitoring_list_rules_response'
require 'datadog_api_client/v2/models/security_monitoring_rule_case'
require 'datadog_api_client/v2/models/security_monitoring_rule_case_create'
require 'datadog_api_client/v2/models/security_monitoring_rule_create_payload'
require 'datadog_api_client/v2/models/security_monitoring_rule_detection_method'
require 'datadog_api_client/v2/models/security_monitoring_rule_evaluation_window'
require 'datadog_api_client/v2/models/security_monitoring_rule_keep_alive'
require 'datadog_api_client/v2/models/security_monitoring_rule_max_signal_duration'
require 'datadog_api_client/v2/models/security_monitoring_rule_new_value_options'
require 'datadog_api_client/v2/models/security_monitoring_rule_new_value_options_forget_after'
require 'datadog_api_client/v2/models/security_monitoring_rule_new_value_options_learning_duration'
require 'datadog_api_client/v2/models/security_monitoring_rule_options'
require 'datadog_api_client/v2/models/security_monitoring_rule_query'
require 'datadog_api_client/v2/models/security_monitoring_rule_query_aggregation'
require 'datadog_api_client/v2/models/security_monitoring_rule_query_create'
require 'datadog_api_client/v2/models/security_monitoring_rule_response'
require 'datadog_api_client/v2/models/security_monitoring_rule_severity'
require 'datadog_api_client/v2/models/security_monitoring_rule_update_payload'
require 'datadog_api_client/v2/models/security_monitoring_runtime_agent_rule'
require 'datadog_api_client/v2/models/security_monitoring_signal'
require 'datadog_api_client/v2/models/security_monitoring_signal_attributes'
require 'datadog_api_client/v2/models/security_monitoring_signal_list_request'
require 'datadog_api_client/v2/models/security_monitoring_signal_list_request_filter'
require 'datadog_api_client/v2/models/security_monitoring_signal_list_request_page'
require 'datadog_api_client/v2/models/security_monitoring_signal_type'
require 'datadog_api_client/v2/models/security_monitoring_signals_list_response'
require 'datadog_api_client/v2/models/security_monitoring_signals_list_response_links'
require 'datadog_api_client/v2/models/security_monitoring_signals_list_response_meta'
require 'datadog_api_client/v2/models/security_monitoring_signals_list_response_meta_page'
require 'datadog_api_client/v2/models/security_monitoring_signals_sort'
require 'datadog_api_client/v2/models/user'
require 'datadog_api_client/v2/models/user_attributes'
require 'datadog_api_client/v2/models/user_create_attributes'
require 'datadog_api_client/v2/models/user_create_data'
require 'datadog_api_client/v2/models/user_create_request'
require 'datadog_api_client/v2/models/user_invitation_data'
require 'datadog_api_client/v2/models/user_invitation_data_attributes'
require 'datadog_api_client/v2/models/user_invitation_relationships'
require 'datadog_api_client/v2/models/user_invitation_response'
require 'datadog_api_client/v2/models/user_invitation_response_data'
require 'datadog_api_client/v2/models/user_invitations_request'
require 'datadog_api_client/v2/models/user_invitations_response'
require 'datadog_api_client/v2/models/user_invitations_type'
require 'datadog_api_client/v2/models/user_relationships'
require 'datadog_api_client/v2/models/user_response'
require 'datadog_api_client/v2/models/user_response_included_item'
require 'datadog_api_client/v2/models/user_response_relationships'
require 'datadog_api_client/v2/models/user_update_attributes'
require 'datadog_api_client/v2/models/user_update_data'
require 'datadog_api_client/v2/models/user_update_request'
require 'datadog_api_client/v2/models/users_response'
require 'datadog_api_client/v2/models/users_type'

# APIs
require 'datadog_api_client/v2/api/dashboard_lists_api'
require 'datadog_api_client/v2/api/incident_services_api'
require 'datadog_api_client/v2/api/incident_teams_api'
require 'datadog_api_client/v2/api/incidents_api'
require 'datadog_api_client/v2/api/key_management_api'
require 'datadog_api_client/v2/api/logs_api'
require 'datadog_api_client/v2/api/logs_archives_api'
require 'datadog_api_client/v2/api/logs_metrics_api'
require 'datadog_api_client/v2/api/metrics_api'
require 'datadog_api_client/v2/api/processes_api'
require 'datadog_api_client/v2/api/roles_api'
require 'datadog_api_client/v2/api/security_monitoring_api'
require 'datadog_api_client/v2/api/users_api'

module DatadogAPIClient::V2
  class << self
    # Customize default settings for the SDK using block.
    #   DatadogAPIClient::V2.configure do |config|
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
