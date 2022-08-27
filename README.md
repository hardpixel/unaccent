# Unaccent

Ruby gem to replace a string's accent characters with ASCII characters. Based on [SixArm Ruby Unaccent](https://github.com/SixArm/sixarm_ruby_unaccent).

[![Gem Version](https://badge.fury.io/rb/unaccent.svg)](https://badge.fury.io/rb/unaccent)
[![Build](https://github.com/hardpixel/unaccent/actions/workflows/build.yml/badge.svg)](https://github.com/hardpixel/unaccent/actions/workflows/build.yml)
[![Maintainability](https://api.codeclimate.com/v1/badges/9070ea120ceeddbcc1d2/maintainability)](https://codeclimate.com/github/hardpixel/unaccent/maintainability)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'unaccent'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install unaccent

## Usage

```ruby
require 'unaccent'

Unaccent.unaccent('déjà vu') # deja vu
Unaccent.unaccent('νέα')     # νεα

require 'unaccent/string'

'déjà vu'.unaccent # deja vu
'νέα'.unaccent     # νεα
```

## Benchmark

```
IPS Comparison:
                gsub:    33804.1 i/s
           each_char:    16639.9 i/s - 2.03x  (± 0.00) slower
  each_char (sixarm):    13708.2 i/s - 2.47x  (± 0.00) slower
                scan:    10390.0 i/s - 3.25x  (± 0.00) slower
       scan (sixarm):     8765.8 i/s - 3.86x  (± 0.00) slower
           split_map:     7800.9 i/s - 4.33x  (± 0.00) slower
  split_map (sixarm):     6780.7 i/s - 4.99x  (± 0.00) slower


Memory Comparison:
                gsub:       5947 allocated
           each_char:      10704 allocated - 1.80x more
                scan:      15368 allocated - 2.58x more
           split_map:      20582 allocated - 3.46x more
  split_map (sixarm):      23185 allocated - 3.90x more
  each_char (sixarm):      24979 allocated - 4.20x more
       scan (sixarm):      29979 allocated - 5.04x more
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hardpixel/unaccent.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
