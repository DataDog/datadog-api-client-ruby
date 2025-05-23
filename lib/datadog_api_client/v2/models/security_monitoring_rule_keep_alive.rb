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
  # Once a signal is generated, the signal will remain "open" if a case is matched at least once within
  # this keep alive window. For third party detection method, this field is not used.
  class SecurityMonitoringRuleKeepAlive
    include BaseEnumModel

    ZERO_MINUTES = 0.freeze
    ONE_MINUTE = 60.freeze
    FIVE_MINUTES = 300.freeze
    TEN_MINUTES = 600.freeze
    FIFTEEN_MINUTES = 900.freeze
    THIRTY_MINUTES = 1800.freeze
    ONE_HOUR = 3600.freeze
    TWO_HOURS = 7200.freeze
    THREE_HOURS = 10800.freeze
    SIX_HOURS = 21600.freeze
    TWELVE_HOURS = 43200.freeze
    ONE_DAY = 86400.freeze
  end
end
