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
  # Optional attributes for the status of a bulk tag configuration request.
  class MetricBulkTagConfigStatusAttributes
    include BaseGenericModel

    # A list of account emails to notify when the configuration is applied.
    attr_accessor :emails

    # When set to true, the configuration will exclude the configured tags and include any other submitted tags.
    # When set to false, the configuration will include the configured tags and exclude any other submitted tags.
    attr_accessor :exclude_tags_mode

    # The status of the request.
    attr_accessor :status

    # A list of tag names to apply to the configuration.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'emails' => :'emails',
        :'exclude_tags_mode' => :'exclude_tags_mode',
        :'status' => :'status',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'emails' => :'Array<String>',
        :'exclude_tags_mode' => :'Boolean',
        :'status' => :'String',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::MetricBulkTagConfigStatusAttributes` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'emails')
        if (value = attributes[:'emails']).is_a?(Array)
          self.emails = value
        end
      end

      if attributes.key?(:'exclude_tags_mode')
        self.exclude_tags_mode = attributes[:'exclude_tags_mode']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          emails == o.emails &&
          exclude_tags_mode == o.exclude_tags_mode &&
          status == o.status &&
          tags == o.tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [emails, exclude_tags_mode, status, tags].hash
    end
  end
end
