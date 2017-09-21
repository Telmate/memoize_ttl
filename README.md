# MemoizeTtl

Simple memoize with an expiration time (time-to-live).

MemoizeTtl is not a key based storage. 
MemoizeTtl is an instance variable storage system backed by a ruby macro that writes getter/generator methods with an 
expire check pattern for you.

## Use Cases

* In process, decentralized cache
* Volatile data debouncing
* Cache with-in cache. Self-expiring memoized values are serializable.


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
