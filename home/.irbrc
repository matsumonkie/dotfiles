def r
  reload!
end

def me
  User.find_by(email: "f@f.f")
end

def plateau
  Neighbourhood.find_by(code: "plateaumontroyal.montreal.montreal")
end

require 'irb/ext/save-history'
# History configuration
if defined? IRB.conf
  IRB.conf[:SAVE_HISTORY] = 10000
  IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
end

# Awesome print
require 'awesome_print'
#AwesomePrint.irb!
alias p ap

# Hirb
require 'hirb'
Hirb.enable
extend Hirb::Console

def bm(repetitions=100, &block)
  require 'benchmark'
  pp "benchmarking #{repetitions} times"
  Benchmark.bmbm do |b|
    b.report {repetitions.times &block}
  end
  nil
end

def show_mongo
  Moped.logger = Logger.new($stdout)
end
