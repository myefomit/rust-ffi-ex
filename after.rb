require 'benchmark'
require 'ffi'

module FFITest
  extend FFI::Library
  ffi_lib 'target/release/libffi.dylib'
  attach_function :process, [], :void
end

puts "After: #{Benchmark.measure{FFITest.process}}"
puts "Done"
