require './lib/deep_freezable'

class Bank
  extend DeepFreezable
  COUTRIES = deep_freeze(['Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee'])
end
