# Jungle

A mini e-commerce application built with Rails 6.1 and is used for learning Ruby on Rails by adding new features to an existing application. 



## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Features
- Sold out badge for products that are sold out
- Admin Categories where the admin can add new categories in the database
- User Authentication including a login and register page using bcrypt gem.
- An order detail page including the details of the order and the email of the customer
- Admin security where admin pages are only accessible after entering a username and password
- Empty cart warning message when user tries to check out without any items in the cart