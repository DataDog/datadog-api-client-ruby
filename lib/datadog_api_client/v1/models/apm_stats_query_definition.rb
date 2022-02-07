=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The APM stats query for table and distributions widgets.
  class ApmStatsQueryDefinition
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Column properties used by the front end for display.
    attr_accessor :columns

    # Environment name.
    attr_accessor :env

    # Operation name associated with service.
    attr_accessor :name

    # The organization's host group name and value.
    attr_accessor :primary_tag

    # Resource name.
    attr_accessor :resource

    # The level of detail for the request.
    attr_accessor :row_type

    # Service name.
    attr_accessor :service

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

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
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

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ApmStatsQueryDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ApmStatsQueryDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
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

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @env.nil?
        invalid_properties.push('invalid value for "env", env cannot be nil.')
      end
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end
      if @primary_tag.nil?
        invalid_properties.push('invalid value for "primary_tag", primary_tag cannot be nil.')
      end
      if @row_type.nil?
        invalid_properties.push('invalid value for "row_type", row_type cannot be nil.')
      end
      if @service.nil?
        invalid_properties.push('invalid value for "service", service cannot be nil.')
      end
      invalid_properties
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
      return false if @env.nil?
      return false if @name.nil?
      return false if @primary_tag.nil?
      return false if @row_type.nil?
      return false if @service.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param env [Object] Object to be assigned
    def env=(env)
      if @env.nil?
        fail ArgumentError, 'invalid value for "env", env cannot be nil.'
      end
      @env = env
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    def name=(name)
      if @name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param primary_tag [Object] Object to be assigned
    def primary_tag=(primary_tag)
      if @primary_tag.nil?
        fail ArgumentError, 'invalid value for "primary_tag", primary_tag cannot be nil.'
      end
      @primary_tag = primary_tag
    end

    # Custom attribute writer method with validation
    # @param row_type [Object] Object to be assigned
    def row_type=(row_type)
      validator = EnumAttributeValidator.new('ApmStatsQueryRowType', ['service', 'resource', 'span'])
      unless validator.valid?(row_type)
        fail ArgumentError, "invalid value for \"row_type\", must be one of #{validator.allowable_values}."
      end
      if @row_type.nil?
        fail ArgumentError, 'invalid value for "row_type", row_type cannot be nil.'
      end
      @row_type = row_type
    end

    # Custom attribute writer method with validation
    # @param service [Object] Object to be assigned
    def service=(service)
      if @service.nil?
        fail ArgumentError, 'invalid value for "service", service cannot be nil.'
      end
      @service = service
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
          service == o.service
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [columns, env, name, primary_tag, resource, row_type, service].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    # @!visibility private
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] Any valid value
    # @return [Hash] Returns the value in the form of hash
    # @!visibility private
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
