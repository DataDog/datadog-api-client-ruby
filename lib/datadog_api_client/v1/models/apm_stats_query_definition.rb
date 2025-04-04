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
  # The APM stats query for table and distributions widgets.
  class ApmStatsQueryDefinition
    include BaseGenericModel

    # Column properties used by the front end for display.
    attr_accessor :columns

    # Environment name.
    attr_reader :env

    # Operation name associated with service.
    attr_reader :name

    # The organization's host group name and value.
    attr_reader :primary_tag

    # Resource name.
    attr_accessor :resource

    # The level of detail for the request.
    attr_reader :row_type

    # Service name.
    attr_reader :service

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'columns' => :'columns',
        :'env' => :'env',
        :'name' => :'name',
        :'primary_tag' => :'primary_tag',
        :'resource' => :'resource',
        :'row_type' => :'row_type',
        :'service' => :'service'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'columns' => :'Array<ApmStatsQueryColumnType>',
        :'env' => :'String',
        :'name' => :'String',
        :'primary_tag' => :'String',
        :'resource' => :'String',
        :'row_type' => :'ApmStatsQueryRowType',
        :'service' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ApmStatsQueryDefinition` initialize method"
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

      if attributes.key?(:'columns')
        if (value = attributes[:'columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'primary_tag')
        self.primary_tag = attributes[:'primary_tag']
      end

      if attributes.key?(:'resource')
        self.resource = attributes[:'resource']
      end

      if attributes.key?(:'row_type')
        self.row_type = attributes[:'row_type']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @env.nil?
      return false if @name.nil?
      return false if @primary_tag.nil?
      return false if @row_type.nil?
      return false if @service.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param env [Object] Object to be assigned
    # @!visibility private
    def env=(env)
      if env.nil?
        fail ArgumentError, 'invalid value for "env", env cannot be nil.'
      end
      @env = env
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param primary_tag [Object] Object to be assigned
    # @!visibility private
    def primary_tag=(primary_tag)
      if primary_tag.nil?
        fail ArgumentError, 'invalid value for "primary_tag", primary_tag cannot be nil.'
      end
      @primary_tag = primary_tag
    end

    # Custom attribute writer method with validation
    # @param row_type [Object] Object to be assigned
    # @!visibility private
    def row_type=(row_type)
      if row_type.nil?
        fail ArgumentError, 'invalid value for "row_type", row_type cannot be nil.'
      end
      @row_type = row_type
    end

    # Custom attribute writer method with validation
    # @param service [Object] Object to be assigned
    # @!visibility private
    def service=(service)
      if service.nil?
        fail ArgumentError, 'invalid value for "service", service cannot be nil.'
      end
      @service = service
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
          columns == o.columns &&
          env == o.env &&
          name == o.name &&
          primary_tag == o.primary_tag &&
          resource == o.resource &&
          row_type == o.row_type &&
          service == o.service &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [columns, env, name, primary_tag, resource, row_type, service, additional_properties].hash
    end
  end
end
