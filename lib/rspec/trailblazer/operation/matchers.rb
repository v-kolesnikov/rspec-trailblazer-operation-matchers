require 'rspec/trailblazer/operation/matchers/be_success'
require 'rspec/trailblazer/operation/matchers/be_fail_with_key'
require 'rspec/trailblazer/operation/matchers/be_fail_with_keys'
require 'rspec/trailblazer/operation/matchers/version'

module RSpec
  module Trailblazer
    module Operation
      module Matchers
        extend ::RSpec::Matchers::DSL

        def be_success
          ::RSpec::Trailblazer::Operation::Matchers::BeSuccess.new
        end

        def be_fail_with_key(key)
          ::RSpec::Trailblazer::Operation::Matchers::BeFailWithKey.new(key)
        end

        def be_fail_with_keys
          ::RSpec::Trailblazer::Operation::Matchers::BeFailWithKeys.new(key)
        end
      end
    end
  end
end

RSpec.configure do |config|
  config.include RSpec::Trailblazer::Operation::Matchers, type: :operation
end
