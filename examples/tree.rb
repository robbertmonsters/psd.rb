require '../lib/psd.rb'
require 'pp'

file = ARGV[0] || './images/2_art.psd'
psd = PSD.new(file)
psd.parse!

pp psd.tree.to_hash