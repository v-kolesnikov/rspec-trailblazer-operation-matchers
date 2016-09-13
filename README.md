# RSpec::Trailblazer::Operation::Matchers

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-trailblazer-operation-matchers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-trailblazer-operation-matchers

## Usage

```ruby
describe Thing::Create do
  subject(:operation) { Thing::Create.run(params).last }

  context 'when params is valid' do
    let(:params) { { thing: {} } }
    it { is_expected.to be_success }
  end

  context 'when params is invalid' do
    let(:params) { { thing: { param: 'wrong value' } } }
    it { is_expected.not_to be_success }
    it { is_expected.to be_fail_with_key :param }
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/v-kolesnikov/rspec-trailblazer-operation-matchers.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
