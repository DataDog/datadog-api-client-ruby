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
  # Color palette to apply.
  class WidgetPalette
    include BaseEnumModel

    BLUE = "blue".freeze
    CUSTOM_BACKGROUND = "custom_bg".freeze
    CUSTOM_IMAGE = "custom_image".freeze
    CUSTOM_TEXT = "custom_text".freeze
    GRAY_ON_WHITE = "gray_on_white".freeze
    GREY = "grey".freeze
    GREEN = "green".freeze
    ORANGE = "orange".freeze
    RED = "red".freeze
    RED_ON_WHITE = "red_on_white".freeze
    WHITE_ON_GRAY = "white_on_gray".freeze
    WHITE_ON_GREEN = "white_on_green".freeze
    GREEN_ON_WHITE = "green_on_white".freeze
    WHITE_ON_RED = "white_on_red".freeze
    WHITE_ON_YELLOW = "white_on_yellow".freeze
    YELLOW_ON_WHITE = "yellow_on_white".freeze
    BLACK_ON_LIGHT_YELLOW = "black_on_light_yellow".freeze
    BLACK_ON_LIGHT_GREEN = "black_on_light_green".freeze
    BLACK_ON_LIGHT_RED = "black_on_light_red".freeze
  end
end
