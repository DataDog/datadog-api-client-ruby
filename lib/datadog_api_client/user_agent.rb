# Define user-agent.

require 'rbconfig'
require 'httparty'

module DatadogAPIClient
  USER_AGENT = format(
    'datadog-api-client-ruby/%<version>s (ruby %<ruver>s; os %<os>s; arch %<arch>s; httparty-version %<httparty_version>s)',
    version: VERSION,
    ruver: RUBY_VERSION,
    os: RbConfig::CONFIG['host_os'].downcase,
    arch: RbConfig::CONFIG['host_cpu'],
    httparty_version: HTTParty::VERSION
  )
end
