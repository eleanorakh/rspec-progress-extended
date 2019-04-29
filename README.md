# RSpec Progress Extended

RSpec Progress Extended is an RSpec formatter to tally the count of run count
of your specs.

## Installation

Installing rspec_progess_extended is easy. Just put it in your Gemfile and run
your specs:

```ruby
gem 'rspec_progress_extended'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install rspec_progress_extended
```

If you want to use `rspec_progress_extended` as your default formatter, simply
put this option in your `.rspec` or `.rspec.local` file:

```
--format RspecProgressExtended::Formatter
```

## Contributing

Found an issue? Have a great idea? Want to help? Great! Create an issue issue
for it, or even better; fork the project and fix the problem yourself. Pull
requests are always welcome. :)

This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the
[Contributor Covenant][contributor_covenant] code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License][mit_license].

## Code of Conduct

Everyone interacting in the RSpec Progress Extended project’s codebases is
expected to follow the [code of conduct][code_of_conduct].

[contributor_covenant]: http://contributor-covenant.org
[mit_license]: https://opensource.org/licenses/MIT
[code_of_conduct]: https://github.com/eleanorakh/rspec_progress_extended/blob/master/CODE_OF_CONDUCT.md
