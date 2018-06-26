# UnicodeRange

Get unicodes by range and exclude reserved words.

```ruby
unicode_range = UnicodeRange.new(from: "FF10", to: "FF19")

unicode_range.expand.to_a
=> [65296, 65297, 65298, 65299, 65300, 65301, 65302, 65303, 65304, 65305]

unicode_range.expand.to_s
=> "０１２３４５６７８９"

reserved_words = %w(FF3B FF3C FF3D FF3E FF3F FF40)
UnicodeRange.new(from: "FF21", to: "FF5A").expand(except: reserved_words).to_s
=> "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem "unicode_range"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unicode_range


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/hack` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JuanitoFatas/unicode_range.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
