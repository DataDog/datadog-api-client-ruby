#!/usr/bin/env ruby

def assert(condition, message = "Assertion failed")
  raise message unless condition
  print "."
end

def assert_equal(expected, actual, message = nil)
  msg = message || "Expected #{expected.inspect}, got #{actual.inspect}"
  raise msg unless expected == actual
  print "."
end

def assert_includes(collection, item, message = nil)
  msg = message || "Expected #{collection.inspect} to include #{item.inspect}"
  raise msg unless collection.include?(item)
  print "."
end

test_cases = [
  ['valid_key', true],
  ['_valid_key', true],
  ['ValidKey123', true],
  ['key123', true],
  ['key.with.dots', false],
  ['123invalid', false],
  ['.starts_with_dot', false],
  ['', false],
  ['key-with-dash', false],
  ['key with space', false],
  ['key@special', false]
]

test_cases.each do |key, expected|
  begin
    eval("{#{key}: 'value'}")
    assert(expected, "Expected '#{key}' to fail but it succeeded")
  rescue SyntaxError
    assert(!expected, "Expected '#{key}' to succeed but it failed")
  end
end

hash = {
  "ocsf.activity_name" => 'Other',
  "ocsf.activity_id" => '99'
}

assert(hash.is_a?(Hash))
assert_equal('Other', hash["ocsf.activity_name"])
assert_equal('99', hash["ocsf.activity_id"])
assert_includes(hash.inspect, '"ocsf.activity_name"=>"Other"')
assert_includes(hash.inspect, '"ocsf.activity_id"=>"99"')

hash = {
  "ocsf.activity_name" => ['eventName']
}

assert(hash.is_a?(Hash))
assert_equal(['eventName'], hash["ocsf.activity_name"])
assert_includes(hash.inspect, '"ocsf.activity_name"=>["eventName"]')

hash = {
  normal_key: 'value1',
  another_key: 'value2'
}

assert(hash.is_a?(Hash))
assert_equal('value1', hash[:normal_key])
assert_equal('value2', hash[:another_key])
