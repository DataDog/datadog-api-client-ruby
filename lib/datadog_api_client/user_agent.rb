# Define user-agent.

require 'rbconfig'
require 'net/http'

module DatadogAPIClient
  USER_AGENT = format(
    'datadog-api-client-ruby/%<version>s (ruby %<ruver>s; os %<os>s; arch %<arch>s; net-http-version %<net_http_version>s)',
    version: VERSION,
    ruver: RUBY_VERSION,
    os: RbConfig::CONFIG['host_os'].downcase,
    arch: RbConfig::CONFIG['host_cpu'],
    # Net::HTTP::VERSION is only defined since net-http 0.1.1 (bundled with ruby >= 3.0)
    net_http_version: defined?(Net::HTTP::VERSION) ? Net::HTTP::VERSION : "ruby-#{RUBY_VERSION}"
  )
end
