module RSpec
  module Trailblazer
    module Operation
      module Matchers
        class BeFailWithKey
          attr_reader :subject
          attr_reader :expected

          def initialize(expected_key)
            @expected = expected_key
          end

          def description
            "be fail with key #{expected}"
          end

          def matches?(subject)
            @subject = subject
            subject.contract.errors.messages.key? expected
          end

          def failure_message
            "#{errors.messages} not be include error with key #{expected}"
          end

          private

          def errors
            actual.contract.errors
          end
        end
      end
    end
  end
end
