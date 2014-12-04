# Capistrano::Monit

Capistrano tasks for automatic monit configuration

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-monit', github: 'jiajiawang/capistrano-monit'
```

Then execute:

    $ bundle install

And then add to Capfile:

    $ require 'capistrano/monit'

## Usage

Put your monitrc template file in config/deploy/templates/monitrc.erb

Or generate a default template using

    $ rails generate capistrano:monit:config

Deploy monitrc

    $ cap monit:setup 

Start, stop or restart monit process by using

    $ cap monit:start
    $ cap monit:stop
    $ cap monit:restart

## Thanks
[bruno-](https://github.com/bruno-) - This gem is inspired from [capistrano-unicorn-nginx](https://github.com/bruno-/capistrano-unicorn-nginx)

