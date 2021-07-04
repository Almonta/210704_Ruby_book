require 'minitest/autorun'
require './lib/gate'

class GateTest < Minitest::Test
  def test_gate
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
  end
end