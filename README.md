# KpGeohash
A simplistic geohash for ruby without any network calls or fees.

# Getting Started

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'kp_geohash'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install kp_geohash
```

## Usage
### Decode lat and lon
```ruby
latitude = 48.668983
longitude = -4.329021
percision = 9
KpGeohash::Encode.new(latitude, longitude, percision).build.geohash # => gbsuv7ztq
```

### Encode lat and lon
```ruby
geohash = 'gbsuv7ztq'

geohash_decode = KpGeohash::Decode.new(geohash).build
geohash_decode.lat
geohash_decode.lon
```

And that is it. It is that simple.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kp_geohash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

