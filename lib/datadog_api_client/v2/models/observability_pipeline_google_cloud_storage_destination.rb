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
  # The `google_cloud_storage` destination stores logs in a Google Cloud Storage (GCS) bucket.
  # It requires a bucket name, GCP authentication, and metadata fields.
  class ObservabilityPipelineGoogleCloudStorageDestination
    include BaseGenericModel

    # Access control list setting for objects written to the bucket.
    attr_reader :acl

    # GCP credentials used to authenticate with Google Cloud Storage.
    #
    attr_reader :auth

    # Name of the GCS bucket.
    attr_reader :bucket

    # Unique identifier for the destination component.
    attr_reader :id

    # A list of component IDs whose output is used as the `input` for this component.
    attr_reader :inputs

    # Optional prefix for object keys within the GCS bucket.
    attr_accessor :key_prefix

    # Custom metadata key-value pairs added to each object.
    attr_reader :metadata

    # Storage class used for objects stored in GCS.
    attr_reader :storage_class

    # The destination type. Always `google_cloud_storage`.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'acl' => :'acl',
        :'auth' => :'auth',
        :'bucket' => :'bucket',
        :'id' => :'id',
        :'inputs' => :'inputs',
        :'key_prefix' => :'key_prefix',
        :'metadata' => :'metadata',
        :'storage_class' => :'storage_class',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'acl' => :'ObservabilityPipelineGoogleCloudStorageDestinationAcl',
        :'auth' => :'ObservabilityPipelineGcpAuth',
        :'bucket' => :'String',
        :'id' => :'String',
        :'inputs' => :'Array<String>',
        :'key_prefix' => :'String',
        :'metadata' => :'Array<ObservabilityPipelineMetadataEntry>',
        :'storage_class' => :'ObservabilityPipelineGoogleCloudStorageDestinationStorageClass',
        :'type' => :'ObservabilityPipelineGoogleCloudStorageDestinationType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'key_prefix',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineGoogleCloudStorageDestination` initialize method"
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

      if attributes.key?(:'acl')
        self.acl = attributes[:'acl']
      end

      if attributes.key?(:'auth')
        self.auth = attributes[:'auth']
      end

      if attributes.key?(:'bucket')
        self.bucket = attributes[:'bucket']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'inputs')
        if (value = attributes[:'inputs']).is_a?(Array)
          self.inputs = value
        end
      end

      if attributes.key?(:'key_prefix')
        self.key_prefix = attributes[:'key_prefix']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
        end
      end

      if attributes.key?(:'storage_class')
        self.storage_class = attributes[:'storage_class']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @acl.nil?
      return false if @auth.nil?
      return false if @bucket.nil?
      return false if @id.nil?
      return false if @inputs.nil?
      return false if @metadata.nil?
      return false if @storage_class.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param acl [Object] Object to be assigned
    # @!visibility private
    def acl=(acl)
      if acl.nil?
        fail ArgumentError, 'invalid value for "acl", acl cannot be nil.'
      end
      @acl = acl
    end

    # Custom attribute writer method with validation
    # @param auth [Object] Object to be assigned
    # @!visibility private
    def auth=(auth)
      if auth.nil?
        fail ArgumentError, 'invalid value for "auth", auth cannot be nil.'
      end
      @auth = auth
    end

    # Custom attribute writer method with validation
    # @param bucket [Object] Object to be assigned
    # @!visibility private
    def bucket=(bucket)
      if bucket.nil?
        fail ArgumentError, 'invalid value for "bucket", bucket cannot be nil.'
      end
      @bucket = bucket
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param inputs [Object] Object to be assigned
    # @!visibility private
    def inputs=(inputs)
      if inputs.nil?
        fail ArgumentError, 'invalid value for "inputs", inputs cannot be nil.'
      end
      @inputs = inputs
    end

    # Custom attribute writer method with validation
    # @param metadata [Object] Object to be assigned
    # @!visibility private
    def metadata=(metadata)
      if metadata.nil?
        fail ArgumentError, 'invalid value for "metadata", metadata cannot be nil.'
      end
      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param storage_class [Object] Object to be assigned
    # @!visibility private
    def storage_class=(storage_class)
      if storage_class.nil?
        fail ArgumentError, 'invalid value for "storage_class", storage_class cannot be nil.'
      end
      @storage_class = storage_class
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          acl == o.acl &&
          auth == o.auth &&
          bucket == o.bucket &&
          id == o.id &&
          inputs == o.inputs &&
          key_prefix == o.key_prefix &&
          metadata == o.metadata &&
          storage_class == o.storage_class &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [acl, auth, bucket, id, inputs, key_prefix, metadata, storage_class, type, additional_properties].hash
    end
  end
end
