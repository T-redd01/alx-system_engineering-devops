#!/usr/bin/env ruby
puts ARGV[0].scan(/.+from:(\+?\d{11}|\w+)\].+to:(\+?\d{11}|\w+)\].+flags:([-]?\d:[-]?\d:[-]?\d:[-]?\d:[-]?\d)/).join(",")
