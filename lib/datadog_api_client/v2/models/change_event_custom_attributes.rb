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
  # Object representing custom change event attributes.
  class ChangeEventCustomAttributes
    include BaseGenericModel

    # Object representing the entity which made the change. Optional field but if provided should include `type` and `name`.
    attr_accessor :author

    # Free form object with information related to the `change` event. Can be arbitrarily nested and contain any valid JSON.
    attr_accessor :change_metadata

    # Object representing a uniquely identified resource. Only the resource type `feature_flag` is supported.
    attr_reader :changed_resource

    # A list of resources impacted by this change. It is recommended to provide an impacted resource to display
    # the change event at the right location. Only resources of type `service` are supported.
    attr_accessor :impacted_resources

    # Free form object to track new value of the changed resource.
    attr_accessor :new_value

    # Free form object to track previous value of the changed resource.
    attr_accessor :prev_value

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'author' => :'author',
        :'change_metadata' => :'change_metadata',
        :'changed_resource' => :'changed_resource',
        :'impacted_resources' => :'impacted_resources',
        :'new_value' => :'new_value',
        :'prev_value' => :'prev_value'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'author' => :'ChangeEventCustomAttributesAuthor',
        :'change_metadata' => :'Hash<String, Object>',
        :'changed_resource' => :'ChangeEventCustomAttributesChangedResource',
        :'impacted_resources' => :'Array<ChangeEventCustomAttributesImpactedResourcesItems>',
        :'new_value' => :'Hash<String, Object>',
        :'prev_value' => :'Hash<String, Object>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ChangeEventCustomAttributes` initialize method"
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

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.key?(:'change_metadata')
        self.change_metadata = attributes[:'change_metadata']
      end

      if attributes.key?(:'changed_resource')
        self.changed_resource = attributes[:'changed_resource']
      end

      if attributes.key?(:'impacted_resources')
        if (value = attributes[:'impacted_resources']).is_a?(Array)
          self.impacted_resources = value
        end
      end

      if attributes.key?(:'new_value')
        self.new_value = attributes[:'new_value']
      end

      if attributes.key?(:'prev_value')
        self.prev_value = attributes[:'prev_value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @changed_resource.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param changed_resource [Object] Object to be assigned
    # @!visibility private
    def changed_resource=(changed_resource)
      if changed_resource.nil?
        fail ArgumentError, 'invalid value for "changed_resource", changed_resource cannot be nil.'
      end
      @changed_resource = changed_resource
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
          author == o.author &&
          change_metadata == o.change_metadata &&
          changed_resource == o.changed_resource &&
          impacted_resources == o.impacted_resources &&
          new_value == o.new_value &&
          prev_value == o.prev_value &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [author, change_metadata, changed_resource, impacted_resources, new_value, prev_value, additional_properties].hash
    end
  end
end