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

module DatadogAPIClient
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Define server configuration index
    attr_accessor :server_index

    # Define server operation configuration index
    attr_accessor :server_operation_index

    # Default server variables
    attr_accessor :server_variables

    # Default server operation variables
    attr_accessor :server_operation_variables

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    # Keep track of the unstable operations, and if they have been enabled
    attr_accessor :unstable_operations

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    # Set this to add accept encoding header for compression
    attr_accessor :compress

    def initialize
      @scheme = 'https'
      @host = 'api.datadoghq.com'
      @base_path = ''
      @server_index = 0
      @server_operation_index = {}
      @server_variables = {}
      @server_operation_variables = {}
      @api_key = {}
      @api_key_prefix = {}
      @timeout = nil
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @cert_file = nil
      @key_file = nil
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @compress = true
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      @unstable_operations = {
            "v1.get_daily_custom_reports": false,
            "v1.get_monthly_custom_reports": false,
            "v1.get_specified_daily_custom_reports": false,
            "v1.get_specified_monthly_custom_reports": false,
            "v1.get_usage_attribution": false,
            "v1.get_slo_history": false,
            "v1.search_slo": false,
            "v2.create_incident": false,
            "v2.delete_incident": false,
            "v2.get_incident": false,
            "v2.list_incidents": false,
            "v2.update_incident": false,
            "v2.create_incident_service": false,
            "v2.delete_incident_service": false,
            "v2.get_incident_service": false,
            "v2.list_incident_services": false,
            "v2.update_incident_service": false,
            "v2.create_incident_team": false,
            "v2.delete_incident_team": false,
            "v2.get_incident_team": false,
            "v2.list_incident_teams": false,
            "v2.update_incident_team": false,
      }
      @server_variables[:site] = ENV['DD_SITE'] if ENV.key? 'DD_SITE'
      @api_key['apiKeyAuth'] = ENV['DD_API_KEY'] if ENV.key? 'DD_API_KEY'
      @api_key['appKeyAuth'] = ENV['DD_APP_KEY'] if ENV.key? 'DD_APP_KEY'

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = nil)
      index = server_operation_index.fetch(operation.to_sym, server_index)
      return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if index == nil

      server_url(index, server_operation_variables.fetch(operation.to_sym, server_variables), operation_server_settings[operation.to_sym])
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
        AuthZ:
          {
            type: 'oauth2',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token}"
          },
        apiKeyAuth:
          {
            type: 'api_key',
            in: 'header',
            key: 'DD-API-KEY',
            value: api_key_with_prefix('apiKeyAuth')
          },
        appKeyAuth:
          {
            type: 'api_key',
            in: 'header',
            key: 'DD-APPLICATION-KEY',
            value: api_key_with_prefix('appKeyAuth')
          },
      }
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          url: "https://{subdomain}.{site}",
          description: "No description provided",
          variables: {
            site: {
              description: "The regional site for Datadog customers.",
              default_value: "datadoghq.com",
              enum_values: [
                "datadoghq.com",
                "us3.datadoghq.com",
                "us5.datadoghq.com",
                "datadoghq.eu",
                "ddog-gov.com"
              ]
            },
            subdomain: {
              description: "The subdomain where the API is deployed.",
              default_value: "api",
            }
          }
        },
        {
          url: "{protocol}://{name}",
          description: "No description provided",
          variables: {
            name: {
              description: "Full site DNS name.",
              default_value: "api.datadoghq.com",
            },
            protocol: {
              description: "The protocol for accessing the API.",
              default_value: "https",
            }
          }
        },
        {
          url: "https://{subdomain}.{site}",
          description: "No description provided",
          variables: {
            site: {
              description: "Any Datadog deployment.",
              default_value: "datadoghq.com",
            },
            subdomain: {
              description: "The subdomain where the API is deployed.",
              default_value: "api",
            }
          }
        }
      ]
    end

    def operation_server_settings
      {
        "v1.get_ip_ranges": [
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "The regional site for Datadog customers.",
                default_value: "datadoghq.com",
                enum_values: [
                  "datadoghq.com",
                  "us3.datadoghq.com",
                  "us5.datadoghq.com",
                  "datadoghq.eu",
                  "ddog-gov.com"
                ]
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "ip-ranges",
              }
            }
          },
          {
            url: "{protocol}://{name}",
            description: "No description provided",
            variables: {
              name: {
                description: "Full site DNS name.",
                default_value: "ip-ranges.datadoghq.com",
              },
              protocol: {
                description: "The protocol for accessing the API.",
                default_value: "https",
              }
            }
          },
          {
            url: "https://{subdomain}.datadoghq.com",
            description: "No description provided",
            variables: {
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "ip-ranges",
              }
            }
          }  
        ],
        "v1.search_slo": [
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "The regional site for Datadog customers.",
                default_value: "datadoghq.com",
                enum_values: [
                  "datadoghq.com",
                  "us3.datadoghq.com",
                  "us5.datadoghq.com",
                  "ddog-gov.com"
                ]
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "api",
              }
            }
          },
          {
            url: "{protocol}://{name}",
            description: "No description provided",
            variables: {
              name: {
                description: "Full site DNS name.",
                default_value: "api.datadoghq.com",
              },
              protocol: {
                description: "The protocol for accessing the API.",
                default_value: "https",
              }
            }
          },
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "Any Datadog deployment.",
                default_value: "datadoghq.com",
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "api",
              }
            }
          }  
        ],
        "v1.submit_log": [
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "The regional site for Datadog customers.",
                default_value: "datadoghq.com",
                enum_values: [
                  "datadoghq.com",
                  "us3.datadoghq.com",
                  "us5.datadoghq.com",
                  "datadoghq.eu",
                  "ddog-gov.com"
                ]
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "http-intake.logs",
              }
            }
          },
          {
            url: "{protocol}://{name}",
            description: "No description provided",
            variables: {
              name: {
                description: "Full site DNS name.",
                default_value: "http-intake.logs.datadoghq.com",
              },
              protocol: {
                description: "The protocol for accessing the API.",
                default_value: "https",
              }
            }
          },
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "Any Datadog deployment.",
                default_value: "datadoghq.com",
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "http-intake.logs",
              }
            }
          }  
        ],
        "v2.submit_log": [
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "The regional site for customers.",
                default_value: "datadoghq.com",
                enum_values: [
                  "datadoghq.com",
                  "us3.datadoghq.com",
                  "us5.datadoghq.com",
                  "datadoghq.eu",
                  "ddog-gov.com"
                ]
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "http-intake.logs",
              }
            }
          },
          {
            url: "{protocol}://{name}",
            description: "No description provided",
            variables: {
              name: {
                description: "Full site DNS name.",
                default_value: "http-intake.logs.datadoghq.com",
              },
              protocol: {
                description: "The protocol for accessing the API.",
                default_value: "https",
              }
            }
          },
          {
            url: "https://{subdomain}.{site}",
            description: "No description provided",
            variables: {
              site: {
                description: "Any Datadog deployment.",
                default_value: "datadoghq.com",
              },
              subdomain: {
                description: "The subdomain where the API is deployed.",
                default_value: "http-intake.logs",
              }
            }
          }  
        ],
      }
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index, variables = {}, servers = nil)
      servers = server_settings if servers == nil

      # check array index out of bound
      if (index < 0 || index >= servers.size)
        fail ArgumentError, "Invalid index #{index} when selecting the server. Must be less than #{servers.size}"
      end

      server = servers[index]
      url = server[:url]

      return url unless server.key? :variables

      # go through variable and assign a value
      server[:variables].each do |name, variable|
        if variables.key?(name)
          if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
        end
      end

      url
    end
  end

  class UnparsedObject
    # Defines unparsed object
    attr_accessor :data

    def initialize(data)
      @data = data
    end

    def to_hash
      self.data
    end
  end

end