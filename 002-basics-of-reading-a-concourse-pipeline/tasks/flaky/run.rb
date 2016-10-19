#!/usr/bin/env ruby

# This script simulates a flaky test by randomly
# "failing" approximately 1/8th of the time.

puts
puts 'Running test!'

if ENV['ALWAYS_FAIL'] == 'true' || Random.rand(8) == 7
  puts 'The test failed! All is lost!'
  exit 1
else
  puts 'Test OK!'
  exit 0
end
