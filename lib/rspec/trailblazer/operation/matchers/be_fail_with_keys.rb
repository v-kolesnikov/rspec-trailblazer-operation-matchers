module RSpec
  module Trailblazer
    module Operation
      module Matchers
        class BeFailWithKeys < BeFailWithKey
          attr_reader :subject
          attr_reader :expected

          def description
            "be fail with keys #{expected}"
          end

          def matches?(subject)
            @subject = subject
            expected.all? do |key|
              errors.messages.key? key
            end
          end

          def failure_message
            "#{errors.messages} not be include errors with keys #{expected}"
          end
        end
      end
    end
  end
end
