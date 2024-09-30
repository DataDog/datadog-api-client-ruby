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
  # Git info for DORA Metrics events.
  class DORAGitInfo
    include BaseGenericModel

    # Git Commit SHA.
    attr_reader :commit_sha

    # Git Repository URL
    attr_reader :repository_url

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'commit_sha' => :'commit_sha',
        :'repository_url' => :'repository_url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'commit_sha' => :'String',
        :'repository_url' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DORAGitInfo` initialize method"
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

      if attributes.key?(:'commit_sha')
        self.commit_sha = attributes[:'commit_sha']
      end

      if attributes.key?(:'repository_url')
        self.repository_url = attributes[:'repository_url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @commit_sha.nil?
      pattern = Regexp.new(/^[a-fA-F0-9]{40,}$/)
      return false if @commit_sha !~ pattern
      return false if @repository_url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param commit_sha [Object] Object to be assigned
    # @!visibility private
    def commit_sha=(commit_sha)
      if commit_sha.nil?
        fail ArgumentError, 'invalid value for "commit_sha", commit_sha cannot be nil.'
      end
      pattern = Regexp.new(/^[a-fA-F0-9]{40,}$/)
      if commit_sha !~ pattern
        fail ArgumentError, "invalid value for \"commit_sha\", must conform to the pattern #{pattern}."
      end
      @commit_sha = commit_sha
    end

    # Custom attribute writer method with validation
    # @param repository_url [Object] Object to be assigned
    # @!visibility private
    def repository_url=(repository_url)
      if repository_url.nil?
        fail ArgumentError, 'invalid value for "repository_url", repository_url cannot be nil.'
      end
      @repository_url = repository_url
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
          commit_sha == o.commit_sha &&
          repository_url == o.repository_url
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [commit_sha, repository_url].hash
    end
  end
end