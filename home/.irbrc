# Awesome print
require 'awesome_print'
AwesomePrint.irb!
alias pp ap

# Hirb
require 'hirb'
Hirb.enable
extend Hirb::Console

def r
  reload!
end

def bm(repetitions=100, &block)
  require 'benchmark'
  pp "benchmarking #{repetitions} times"
  Benchmark.bmbm do |b|
    b.report {repetitions.times &block}
  end
  nil
end