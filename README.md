# Realhq

A gem for my application to RealHQ.

## Installation

Add this line to your application's Gemfile:

    gem 'realhq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install realhq

## Usage

    $ rake realhq:scottmotte

## Usage from Terminal

Gems' rake tasks usually depend on an application - specifically a Rakefile. So if you want to run this from your terminal and stick with the 'rake task' theme, you must do the following.

    $ vi Rakefile

In that Rakefile place.

    require 'realhq'

Then exit vi and type the following.

    $ irb
    %x[rake realhq:scottmotte]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
