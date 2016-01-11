require 'pry'
​
​
module And
  class Double
    attr_accessor :input_a, :input_b
​
    def initialize
      @input_a = 0
      @input_b = 0
    end
​
    def output
      if input_a == 1 && input_b == 1
        return 1
      else
        return 0
      end
    end
​
  end
​
  class Triple
    attr_accessor :input_a, :input_b, :input_c
​
    def initialize
      @input_a = 0
      @input_b = 0
      @input_c = 0
    end
​
    def output
      if input_a == 1 && input_b == 1 && input_c == 1
        return 1
      else
        return 0
      end
    end
​
  end
​
  class Multi
    attr_accessor
​
    def initialize(number)
​
      @variables = Hash.new
      number.times do |i|
        array = ('a'..'z').to_a
        letter = array[i]
        variable = "input_#{letter}"
        binding.pry
        @variables[variable.to_sym] = 0
        binding.pry
      end
​
​
​
    end
  end
​
end
​
gate = And::Double.new
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_b = 0
gate.output
​
gate = And::Triple.new
gate.input_a = 1
gate.input_b = 1
gate.output
gate.input_c = 1
gate.output
gate.input_a = 0
gate.output
​
gate = And::Multi.new(4)
gate.input_a = 1
gate.input_b = 1
gate.input_c = 1
gate.output # => 0
gate.input_d = 1
gate.output # => 1
gate.input_b = 0
gate.output # => 0
