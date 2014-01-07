require 'irb/ext/save-history'
# History configuration
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

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