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
  # Object of the monitor tags.
  class DowntimeMonitorIdentifierTags
    include BaseGenericModel

    # A list of monitor tags. For example, tags that are applied directly to monitors,
    # not tags that are used in monitor queries (which are filtered by the scope parameter), to which the downtime applies.
    # The resulting downtime applies to monitors that match **all** provided monitor tags. Setting `monitor_tags`
    # to `[*]` configures the downtime to mute all monitors for the given scope.
    attr_reader :monitor_tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'monitor_tags' => :'monitor_tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'monitor_tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DowntimeMonitorIdentifierTags` initialize method"
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

      if attributes.key?(:'monitor_tags')
        if (value = attributes[:'monitor_tags']).is_a?(Array)
          self.monitor_tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @monitor_tags.nil?
      return false if @monitor_tags.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param monitor_tags [Object] Object to be assigned
    # @!visibility private
    def monitor_tags=(monitor_tags)
      if monitor_tags.nil?
        fail ArgumentError, 'invalid value for "monitor_tags", monitor_tags cannot be nil.'
      end
      if monitor_tags.length < 1
        fail ArgumentError, 'invalid value for "monitor_tags", number of items must be greater than or equal to 1.'
      end
      @monitor_tags = monitor_tags
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          monitor_tags == o.monitor_tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [monitor_tags].hash
    end
  end
end