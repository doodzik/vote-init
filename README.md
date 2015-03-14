# VoteInit

Too many precious keystrokes are wasted on writing the Ruby class initializer!
This is unacceptable.
![unessesary keystrokes are unacceptable](http://media.giphy.com/media/QUaqJRizED5NC/giphy.gif)
We should use a shorter word than 'initialize'. The word 'init' is shorter and equivalent to 'initialize'.
So this Gem gives you the ability to use init instead of initialize.
If you are in favor of 'init', but are concerned of the monkey patching of the Object class you can use this Abbreviation in your .vimrc file:

```vim
ab init initialize
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vote_init'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vote_init

## Usage

```ruby
require 'vote_init'

class Foo
  def init
    p 'foo'
  end
end

class Bar
  def initialize
    p 'bar'
  end
end

Bar.new
#=> "bar"
Foo.new
#=> "foo"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/vote_init/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
