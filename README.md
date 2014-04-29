# Train Whistle

Uses DNS Service Discovery (a.k.a. mDNS or Bonjour) to advertise a Rails
server on the local network. This primarily exists to make it easy to
connect to a development server from a remote host without having to look
up your IP address.

## Installation

Just add the train_whistle gem to your application's Gemfile, preferably
in the development group.

    group :development do
      gem 'train_whistle', :git => 'https://github.com/benzado/train_whistle.git'
    end

That's it. The gem uses a Railtie to load itself automatically. There is no
configuration (yet).
