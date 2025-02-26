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
  # The type of security issues on which the rule applies. Notification rules based on security signals need to use the trigger source "security_signals",
  # while notification rules based on security vulnerabilities need to use the trigger source "security_findings".
  class TriggerSource
    include BaseEnumModel

    SECURITY_FINDINGS = "security_findings".freeze
    SECURITY_SIGNALS = "security_signals".freeze
  end
end
