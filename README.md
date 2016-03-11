# AssetsAsync

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
