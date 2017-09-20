# MemoizeTtl

Simple memoize with an expiration time (time-to-live).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'memoize_ttl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memoize_ttl

## Usage

This example re-evaluates fish if its called later than 5 seconds apart.

```ruby
class Taco
 extend MemoizeTtl
 memoize_ttl :fish, 5 do
   puts "eval"
   "salmon"
 end
end

```

