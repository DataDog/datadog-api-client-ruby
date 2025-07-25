=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # The action type.
  class SecurityMonitoringRuleCaseActionType
    include BaseEnumModel

    BLOCK_IP = "block_ip".freeze
    BLOCK_USER = "block_user".freeze
    USER_BEHAVIOR = "user_behavior".freeze
    FLAG_IP = "flag_ip".freeze
  end
end
