#!/usr/bin/env ruby

# This script simulates a flaky test by randomly
# "failing" approximately 1/8th of the time.

puts
puts 'Running test!'

def test_ok
  puts 'Test OK!'
  exit 0
end

def test_fail
  puts 'The test failed! All is lost!'
  exit 1
end

test_ok     if ENV['ALWAYS_PASS'] == 'true'
test_fail   if ENV['ALWAYS_FAIL'] == 'true'

if Random.rand(8) != 7
  test_ok
else
  test_fail
end
