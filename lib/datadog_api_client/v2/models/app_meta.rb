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
  # The definition of `AppMeta` object.
  class AppMeta
    include BaseGenericModel

    # The `AppMeta` `created_at`.
    attr_accessor :created_at

    # The `AppMeta` `deleted_at`.
    attr_accessor :deleted_at

    # The `AppMeta` `org_id`.
    attr_accessor :org_id

    # The `AppMeta` `run_as_user`.
    attr_accessor :run_as_user

    # The `AppMeta` `updated_at`.
    attr_accessor :updated_at

    # The `AppMeta` `updated_since_deployment`.
    attr_accessor :updated_since_deployment

    # The `AppMeta` `user_id`.
    attr_accessor :user_id

    # The `AppMeta` `user_name`.
    attr_accessor :user_name

    # The `AppMeta` `user_uuid`.
    attr_accessor :user_uuid

    # The `AppMeta` `version`.
    attr_accessor :version

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'org_id' => :'org_id',
        :'run_as_user' => :'run_as_user',
        :'updated_at' => :'updated_at',
        :'updated_since_deployment' => :'updated_since_deployment',
        :'user_id' => :'user_id',
        :'user_name' => :'user_name',
        :'user_uuid' => :'user_uuid',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'String',
        :'deleted_at' => :'String',
        :'org_id' => :'Integer',
        :'run_as_user' => :'String',
        :'updated_at' => :'String',
        :'updated_since_deployment' => :'Boolean',
        :'user_id' => :'Integer',
        :'user_name' => :'String',
        :'user_uuid' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AppMeta` initialize method"
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'run_as_user')
        self.run_as_user = attributes[:'run_as_user']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'updated_since_deployment')
        self.updated_since_deployment = attributes[:'updated_since_deployment']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.key?(:'user_uuid')
        self.user_uuid = attributes[:'user_uuid']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
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
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          org_id == o.org_id &&
          run_as_user == o.run_as_user &&
          updated_at == o.updated_at &&
          updated_since_deployment == o.updated_since_deployment &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          user_uuid == o.user_uuid &&
          version == o.version &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, deleted_at, org_id, run_as_user, updated_at, updated_since_deployment, user_id, user_name, user_uuid, version, additional_properties].hash
    end
  end
end
