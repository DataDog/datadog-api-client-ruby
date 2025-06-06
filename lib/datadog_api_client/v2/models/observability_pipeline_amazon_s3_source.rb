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
  # The `amazon_s3` source ingests logs from an Amazon S3 bucket.
  # It supports AWS authentication and TLS encryption.
  class ObservabilityPipelineAmazonS3Source
    include BaseGenericModel

    # AWS authentication credentials used for accessing AWS services such as S3.
    # If omitted, the system’s default credentials are used (for example, the IAM role and environment variables).
    #
    attr_accessor :auth

    # The unique identifier for this component. Used to reference this component in other parts of the pipeline (e.g., as input to downstream components).
    attr_reader :id

    # AWS region where the S3 bucket resides.
    attr_reader :region

    # Configuration for enabling TLS encryption between the pipeline component and external services.
    attr_accessor :tls

    # The source type. Always `amazon_s3`.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'auth' => :'auth',
        :'id' => :'id',
        :'region' => :'region',
        :'tls' => :'tls',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'auth' => :'ObservabilityPipelineAwsAuth',
        :'id' => :'String',
        :'region' => :'String',
        :'tls' => :'ObservabilityPipelineTls',
        :'type' => :'ObservabilityPipelineAmazonS3SourceType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineAmazonS3Source` initialize method"
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

      if attributes.key?(:'auth')
        self.auth = attributes[:'auth']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'tls')
        self.tls = attributes[:'tls']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @id.nil?
      return false if @region.nil?
      return false if @type.nil?
      true
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
    # @param region [Object] Object to be assigned
    # @!visibility private
    def region=(region)
      if region.nil?
        fail ArgumentError, 'invalid value for "region", region cannot be nil.'
      end
      @region = region
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
          auth == o.auth &&
          id == o.id &&
          region == o.region &&
          tls == o.tls &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [auth, id, region, tls, type, additional_properties].hash
    end
  end
end
