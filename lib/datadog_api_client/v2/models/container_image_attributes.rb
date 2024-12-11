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
  # Attributes for a Container Image.
  class ContainerImageAttributes
    include BaseGenericModel

    # Number of containers running the image.
    attr_accessor :container_count

    # List of platform-specific images associated with the image record.
    # The list contains more than 1 entry for multi-architecture images.
    attr_accessor :image_flavors

    # List of image tags associated with the Container Image.
    attr_accessor :image_tags

    # List of build times associated with the Container Image.
    # The list contains more than 1 entry for multi-architecture images.
    attr_accessor :images_built_at

    # Name of the Container Image.
    attr_accessor :name

    # List of Operating System architectures supported by the Container Image.
    attr_accessor :os_architectures

    # List of Operating System names supported by the Container Image.
    attr_accessor :os_names

    # List of Operating System versions supported by the Container Image.
    attr_accessor :os_versions

    # Time the image was pushed to the container registry.
    attr_accessor :published_at

    # Registry the Container Image was pushed to.
    attr_accessor :registry

    # Digest of the compressed image manifest.
    attr_accessor :repo_digest

    # Repository where the Container Image is stored in.
    attr_accessor :repository

    # Short version of the Container Image name.
    attr_accessor :short_image

    # List of size for each platform-specific image associated with the image record.
    # The list contains more than 1 entry for multi-architecture images.
    attr_accessor :sizes

    # List of sources where the Container Image was collected from.
    attr_accessor :sources

    # List of tags associated with the Container Image.
    attr_accessor :tags

    # Vulnerability counts associated with the Container Image.
    attr_accessor :vulnerability_count

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'container_count' => :'container_count',
        :'image_flavors' => :'image_flavors',
        :'image_tags' => :'image_tags',
        :'images_built_at' => :'images_built_at',
        :'name' => :'name',
        :'os_architectures' => :'os_architectures',
        :'os_names' => :'os_names',
        :'os_versions' => :'os_versions',
        :'published_at' => :'published_at',
        :'registry' => :'registry',
        :'repo_digest' => :'repo_digest',
        :'repository' => :'repository',
        :'short_image' => :'short_image',
        :'sizes' => :'sizes',
        :'sources' => :'sources',
        :'tags' => :'tags',
        :'vulnerability_count' => :'vulnerability_count'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'container_count' => :'Integer',
        :'image_flavors' => :'Array<ContainerImageFlavor>',
        :'image_tags' => :'Array<String>',
        :'images_built_at' => :'Array<String>',
        :'name' => :'String',
        :'os_architectures' => :'Array<String>',
        :'os_names' => :'Array<String>',
        :'os_versions' => :'Array<String>',
        :'published_at' => :'String',
        :'registry' => :'String',
        :'repo_digest' => :'String',
        :'repository' => :'String',
        :'short_image' => :'String',
        :'sizes' => :'Array<Integer>',
        :'sources' => :'Array<String>',
        :'tags' => :'Array<String>',
        :'vulnerability_count' => :'ContainerImageVulnerabilities'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ContainerImageAttributes` initialize method"
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

      if attributes.key?(:'container_count')
        self.container_count = attributes[:'container_count']
      end

      if attributes.key?(:'image_flavors')
        if (value = attributes[:'image_flavors']).is_a?(Array)
          self.image_flavors = value
        end
      end

      if attributes.key?(:'image_tags')
        if (value = attributes[:'image_tags']).is_a?(Array)
          self.image_tags = value
        end
      end

      if attributes.key?(:'images_built_at')
        if (value = attributes[:'images_built_at']).is_a?(Array)
          self.images_built_at = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'os_architectures')
        if (value = attributes[:'os_architectures']).is_a?(Array)
          self.os_architectures = value
        end
      end

      if attributes.key?(:'os_names')
        if (value = attributes[:'os_names']).is_a?(Array)
          self.os_names = value
        end
      end

      if attributes.key?(:'os_versions')
        if (value = attributes[:'os_versions']).is_a?(Array)
          self.os_versions = value
        end
      end

      if attributes.key?(:'published_at')
        self.published_at = attributes[:'published_at']
      end

      if attributes.key?(:'registry')
        self.registry = attributes[:'registry']
      end

      if attributes.key?(:'repo_digest')
        self.repo_digest = attributes[:'repo_digest']
      end

      if attributes.key?(:'repository')
        self.repository = attributes[:'repository']
      end

      if attributes.key?(:'short_image')
        self.short_image = attributes[:'short_image']
      end

      if attributes.key?(:'sizes')
        if (value = attributes[:'sizes']).is_a?(Array)
          self.sizes = value
        end
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'vulnerability_count')
        self.vulnerability_count = attributes[:'vulnerability_count']
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
          container_count == o.container_count &&
          image_flavors == o.image_flavors &&
          image_tags == o.image_tags &&
          images_built_at == o.images_built_at &&
          name == o.name &&
          os_architectures == o.os_architectures &&
          os_names == o.os_names &&
          os_versions == o.os_versions &&
          published_at == o.published_at &&
          registry == o.registry &&
          repo_digest == o.repo_digest &&
          repository == o.repository &&
          short_image == o.short_image &&
          sizes == o.sizes &&
          sources == o.sources &&
          tags == o.tags &&
          vulnerability_count == o.vulnerability_count &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [container_count, image_flavors, image_tags, images_built_at, name, os_architectures, os_names, os_versions, published_at, registry, repo_digest, repository, short_image, sizes, sources, tags, vulnerability_count, additional_properties].hash
    end
  end
end
