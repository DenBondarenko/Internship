# README

## Info

- Ruby version 3.2.0
- Ruby on Rails 7.0.4

## To get started with the app:

- clone the repo

```html
<pre> git clone https://github.com/DenBondarenko/RubyHW</pre>
```

- install the required gems (Gemfile)

```ruby
gem install bundler

bundle install
```

- type in console

```ruby
rails db:setup
rails s
```

## Log in

- to log in as admin visit `http://localhost:3000/admin` and log in as the default user:

`User: admin@example.com`

`Password: password`

- to log in as user visit `http://localhost:3000`

`User: user@example.com`

`Password: password`

## Sidekiq

- install Redis 6.0 or greater:

```ruby
brew install redis
```

or

```ruby
sudo apt install redis-server
```

- run Sidekiq

```ruby
bundle exec sidekiq
```

- log in as admin
- open in browser

```html
http://localhost:3000/sidekiq`
```
