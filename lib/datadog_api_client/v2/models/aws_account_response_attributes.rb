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
  # The AWS Account Integration Config
  class AWSAccountResponseAttributes
    include BaseGenericModel

    # Tags to apply to all metrics in the account
    attr_accessor :account_tags

    # AWS Authentication config
    attr_accessor :auth_config

    # AWS Account ID
    attr_reader :aws_account_id

    # AWS Account partition
    attr_accessor :aws_partition

    # AWS Regions to collect data from
    attr_accessor :aws_regions

    # Timestamp of when the account integration was created
    attr_accessor :created_at

    # AWS Logs config
    attr_accessor :logs_config

    # AWS Metrics config
    attr_accessor :metrics_config

    # Timestamp of when the account integration was updated
    attr_accessor :modified_at

    # AWS Resources config
    attr_accessor :resources_config

    # AWS Traces config
    attr_accessor :traces_config

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account_tags' => :'account_tags',
        :'auth_config' => :'auth_config',
        :'aws_account_id' => :'aws_account_id',
        :'aws_partition' => :'aws_partition',
        :'aws_regions' => :'aws_regions',
        :'created_at' => :'created_at',
        :'logs_config' => :'logs_config',
        :'metrics_config' => :'metrics_config',
        :'modified_at' => :'modified_at',
        :'resources_config' => :'resources_config',
        :'traces_config' => :'traces_config'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account_tags' => :'Array<String>',
        :'auth_config' => :'AWSAuthConfig',
        :'aws_account_id' => :'String',
        :'aws_partition' => :'AWSAccountPartition',
        :'aws_regions' => :'AWSRegions',
        :'created_at' => :'Time',
        :'logs_config' => :'AWSLogsConfig',
        :'metrics_config' => :'AWSMetricsConfig',
        :'modified_at' => :'Time',
        :'resources_config' => :'AWSResourcesConfig',
        :'traces_config' => :'AWSTracesConfig'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'account_tags',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AWSAccountResponseAttributes` initialize method"
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

      if attributes.key?(:'account_tags')
        if (value = attributes[:'account_tags']).is_a?(Array)
          self.account_tags = value
        end
      end

      if attributes.key?(:'auth_config')
        self.auth_config = attributes[:'auth_config']
      end

      if attributes.key?(:'aws_account_id')
        self.aws_account_id = attributes[:'aws_account_id']
      end

      if attributes.key?(:'aws_partition')
        self.aws_partition = attributes[:'aws_partition']
      end

      if attributes.key?(:'aws_regions')
        self.aws_regions = attributes[:'aws_regions']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'logs_config')
        self.logs_config = attributes[:'logs_config']
      end

      if attributes.key?(:'metrics_config')
        self.metrics_config = attributes[:'metrics_config']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'resources_config')
        self.resources_config = attributes[:'resources_config']
      end

      if attributes.key?(:'traces_config')
        self.traces_config = attributes[:'traces_config']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @aws_account_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param aws_account_id [Object] Object to be assigned
    # @!visibility private
    def aws_account_id=(aws_account_id)
      if aws_account_id.nil?
        fail ArgumentError, 'invalid value for "aws_account_id", aws_account_id cannot be nil.'
      end
      @aws_account_id = aws_account_id
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
          account_tags == o.account_tags &&
          auth_config == o.auth_config &&
          aws_account_id == o.aws_account_id &&
          aws_partition == o.aws_partition &&
          aws_regions == o.aws_regions &&
          created_at == o.created_at &&
          logs_config == o.logs_config &&
          metrics_config == o.metrics_config &&
          modified_at == o.modified_at &&
          resources_config == o.resources_config &&
          traces_config == o.traces_config &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account_tags, auth_config, aws_account_id, aws_partition, aws_regions, created_at, logs_config, metrics_config, modified_at, resources_config, traces_config, additional_properties].hash
    end
  end
end
