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

module DatadogAPIClient::V2
  module BaseEnumModel
    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def build_from_hash(value)
      constantValues = self.class.constants.select { |c| self.class::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::UnparsedObject.new(value) : value
    end

    module ClassMethods
      # Builds the enum from string
      # @param value [String] The enum value in the form of the string
      # @return [String] The enum value
      # @!visibility private
      def build_from_hash(value)
        new.build_from_hash(value)
      end
    end

    def self.included(base)
        base.extend(ClassMethods)
    end
  end

  module BaseGenericModel
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # @see the `==` method implementation in child classes
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      unless self.respond_to?(:additional_properties)
        unless attributes.keys.all? { |key| self.class.openapi_types.key?(key) }
          raise SchemaMismatchError, "Additional properties are not allowed"
        end
      end
      self.class.openapi_types.each_pair do |key, type|
        if attributes.key?(self.class.attribute_map[key]) && attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          res = _deserialize(type, attributes[self.class.attribute_map[key]])
          if res.instance_of? DatadogAPIClient::UnparsedObject
            self._unparsed = true
          elsif (res.kind_of? DatadogAPIClient::V2::BaseGenericModel) && res._unparsed
            self._unparsed = true
          end
          self.send("#{key}=", res)
        end
      end

      if self.respond_to?(:additional_properties)
        attributes.each_with_object({}) { |(k, v), h|
          if (!self.class.attribute_map.key?(k.to_sym))
            self.additional_properties[k.to_sym] = v
          end
        }
      end

      self
    end

    # Deserializes the data based on type
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
    def _deserialize(type, value)
      return nil if value == nil
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
      when :UUID
        value.to_s
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
        klass = DatadogAPIClient::V2.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::UnparsedObject
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

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    module ClassMethods
      # Builds the object from hash
      # @param attributes [Hash] Model attributes in the form of hash
      # @return [Object] Returns the model itself
      # @!visibility private
      def build_from_hash(attributes)
        new.build_from_hash(attributes)
      end

      # List of attributes with nullable: true
      # @!visibility private
      def openapi_nullable
        Set[]
      end
    end

    def self.included(base)
        base.extend(ClassMethods)
    end
  end

  module BaseOneOfModel
    attr_accessor :_unparsed
  end

  module BaseOneOfModelNoDiscriminator

    private

    SchemaMismatchError = Class.new(StandardError)

    # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
    def find_and_cast_into_type(klass, data)
      return if data.nil?

      case klass.to_s
      when 'Boolean'
        return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
      when 'Float'
        return data if data.instance_of?(Float) || data.instance_of?(Integer)
      when 'Integer'
        return data if data.instance_of?(Integer)
      when 'Time'
        return Time.parse(data)
      when 'Date'
        return Date.parse(data)
      when 'String'
        return data if data.instance_of?(String)
      when 'Object' # "type: object"
        return data if data.instance_of?(Hash)
      when 'UUID'
        return UUIDTools::UUID.parse(data)
      when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
        if data.instance_of?(Array)
          sub_type = Regexp.last_match[:sub_type]
          return data.map { |item| find_and_cast_into_type(sub_type, item) }
        end
      when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
        if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
          sub_type = Regexp.last_match[:sub_type]
          return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
        end
      else # model
        const = DatadogAPIClient::V2.const_get(klass)
        if const
          if const.respond_to?(:openapi_one_of) # nested oneOf model
            model = const.build(data)
            return model if model
          else
            model = const.build_from_hash(data)
            return model if model && model.valid?
          end
        end
      end

      raise # if no match by now, raise
    rescue
      raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
    end
  end
end
