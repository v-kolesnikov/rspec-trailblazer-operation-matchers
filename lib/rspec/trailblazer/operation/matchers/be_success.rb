module RSpec
  module Trailblazer
    module Operation
      module Matchers
        class BeSuccess
          attr_reader :subject

          def matches?(subject)
            @subject = subject
            subject.valid?
          end

          def failure_message
            subject.contract.errors.messages
          end
        end
      end
    end
  end
end
