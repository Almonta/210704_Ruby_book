# class User
#   def hello
#     'Hello!'
#   end
# end
# user = User.new
# p user.hello


# class User
#   private
#   def hello
#     'Hello!'
#   end
# end
# user = User.new
# p user.hello


# class User
#   def hello
#     "Hello, I am #{self.name}."
#   end
#   private
#   def name
#     'Alice'
#   end
# end
# user = User.new
# p user.hello


# class Product
#   private
#   def name
#     'A greate movie'
#   end
# end
# class DVD < Product
#   def to_s
#     "name: #{name}"
#   end
# end
# dvd = DVD.new
# p dvd.to_s


# class User
#   private
#   def self.hello
#     'Hello!'
#   end
# end
# p User.hello


# class User
#   class << self
#     private
#     def self.hello
#       'Hello!'
#     end
#   end
# end
# p User.hello


# class User
#   def self.hello
#     'Hello!'
#   end
#   private_class_method :hello
# end
# p User.hello


# class User
#   def foo
#     'foo'
#   end
#   def bar
#     'bar'
#   end
#   private :foo, :bar
#   def baz
#     'baz'
#   end
# end
# user = User.new
# p user.foo
# p user.bar
# p user.baz


# class User
#   attr_reader :name
#   def initialize(name, weight)
#     @name = name
#     @weight = weight
#   end
#   def heavier_than?(other_user)
#     other_user.weight < @weight
#   end
#   protected
#   def weight
#     @weight
#   end
# end
# alice = User.new('Alice', 50)
# bob = User.new('Bob', 60)
# p alice.heavier_than?(bob)
# p bob.heavier_than?(alice)
# p alice.weight


# class Product
#   def foo
#   DEFAULT_PRICE = 0
#   end
# end
# p Product::DEFAULT_PRICE


# class Product
#   DEFAULT_PRICE = 0
#   Product.freeze
#   DEFAULT_PRICE = 1000
# end
# p Product::DEFAULT_PRICE


# class Product
#   NAME = 'A product'
#   SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
#   SOME_PRICES = { 'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000 }
# end
# Product::NAME.upcase!
# p Product::NAME
# Product::SOME_NAMES << 'Hoge'
# p Product::SOME_NAMES
# Product::SOME_PRICES['Hoge'] = 4000
# p Product::SOME_PRICES


# class Product
#   SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
#   def self.names_without_foo(name = SOME_NAMES)
#     name.delete('Foo')
#     names
#   end
# end
# p Product.names_without_foo


SOME_NAMES = ['Foo'.feeze, 'Bar'.freeze, 'Baz'.freeze].freeze

SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze

class Product
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
  def self.names_without_foo(name = SOME_NAMES)
    name.delete('Foo')
    names
  end
end
p Product.names_without_foo