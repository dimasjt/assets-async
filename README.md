# AssetsAsync [![Build Status](https://travis-ci.org/dimasjt/assets_async.svg?branch=master)](https://travis-ci.org/dimasjt/assets_async) [![Gem Version](https://badge.fury.io/rb/assets_async.svg)](https://badge.fury.io/rb/assets_async)

## Installation

Add to your Gemfile file

```ruby
gem 'assets_async'
```

And then execute:

```
$ bundle install
```

## Usage

Add **include_assets_async** in your application.html.erb

```erb
<head>
  <title>Dummy</title>
  
  <%= include_assets_async %>
  
  <!-- Other code -->
</head>
```

Load stylesheet or javascript

```erb
  <!-- Other code -->
  
  <%= load_css 'application.css' %>
  <%= load_js 'application.js' %>
</body>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dimasjt/assets_async. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
