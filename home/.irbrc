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