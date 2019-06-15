# class Calc
#   def add(a, b)
#     # 5
#     a + b
#   end
#   def price(x, tax)
#     x * (1 + tax)
#   end
# end


# # #12 letとlet!
#
# class Calc
#   attr_accessor :tax
#   def initialize
#     @tax = 0
#   end
#   def price(x)
#     x * (1 + tax)
#   end
# end


# #13 method stub
#
# class Calc
#
#   def add(a, b, name)
#     (a + b).to_s + ' by ' + name
#   end
#
# end


#14 message expectation

# class Calc
#
#   def initialize(logger)
#     @logger = logger
#   end
#
#   def add(a, b)
#     @logger.log
#      a + b
#   end
# end
