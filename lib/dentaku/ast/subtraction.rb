require_relative './operation'

module Dentaku
  module AST
    class Subtraction < Operation
      def value(context={})
        left.value(context) - right.value(context)
      end

      def self.precedence
        10
      end
    end
  end
end
