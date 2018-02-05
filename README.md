# G2crowd RubyGem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'g2crowd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install g2crowd

## API Documentation
Available [here](https://data.g2crowd.com/api/docs)


## Usage

```
def find_or_create_record(item)
  ## do something here to save reviews
end

def save_response(response)
  response.each do |item|
    find_or_create_record(item)
  end
end

def paginate_response(response)
  save_response(response)
  paginate_response(response.pages.next) if response.pages.links['next']
end

require 'g2crowd'
G2crowd::Base.api_token = 'test'

response = G2crowd::User.all
paginate_response(response.all)

```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/g2crowd/g2crowd-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

