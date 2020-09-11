=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

# Common files
require 'datadog_api_client/v2/api_client'
require 'datadog_api_client/v2/api_error'
require 'datadog_api_client/v2/version'
require 'datadog_api_client/v2/configuration'

# Models
require 'datadog_api_client/v2/models/api_error_response'
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
require 'datadog_api_client/v2/models/logs_archive_state'
require 'datadog_api_client/v2/models/logs_archives'
require 'datadog_api_client/v2/models/organization'
require 'datadog_api_client/v2/models/organization_attributes'
require 'datadog_api_client/v2/models/organizations_type'
require 'datadog_api_client/v2/models/pagination'
require 'datadog_api_client/v2/models/permission'
require 'datadog_api_client/v2/models/permission_attributes'
require 'datadog_api_client/v2/models/permissions_response'
require 'datadog_api_client/v2/models/permissions_type'
require 'datadog_api_client/v2/models/query_sort_order'
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
require 'datadog_api_client/v2/models/security_monitoring_list_rules_response'
require 'datadog_api_client/v2/models/security_monitoring_rule_case'
require 'datadog_api_client/v2/models/security_monitoring_rule_case_create'
require 'datadog_api_client/v2/models/security_monitoring_rule_create_payload'
require 'datadog_api_client/v2/models/security_monitoring_rule_evaluation_window'
require 'datadog_api_client/v2/models/security_monitoring_rule_keep_alive'
require 'datadog_api_client/v2/models/security_monitoring_rule_max_signal_duration'
require 'datadog_api_client/v2/models/security_monitoring_rule_options'
require 'datadog_api_client/v2/models/security_monitoring_rule_query'
require 'datadog_api_client/v2/models/security_monitoring_rule_query_create'
require 'datadog_api_client/v2/models/security_monitoring_rule_response'
require 'datadog_api_client/v2/models/security_monitoring_rule_severity'
require 'datadog_api_client/v2/models/security_monitoring_rule_update_payload'
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
require 'datadog_api_client/v2/api/logs_archives_api'
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
