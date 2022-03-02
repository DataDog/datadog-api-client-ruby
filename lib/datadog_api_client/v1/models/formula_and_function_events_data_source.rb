=begin
#Datadog API V1 Collection

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

module DatadogAPIClient::V1
  # Data source for event platform-based queries.
  class FormulaAndFunctionEventsDataSource
    include BaseEnumModel

    LOGS = "logs".freeze
    SPANS = "spans".freeze
    NETWORK = "network".freeze
    RUM = "rum".freeze
    SECURITY_SIGNALS = "security_signals".freeze
    PROFILES = "profiles".freeze
    AUDIT = "audit".freeze
    EVENTS = "events".freeze
  end
end
