# Jungle

A mini e-commerce application built with Rails 6.1. Learned how to navigate existing code-bases and implement new features with an unfamiliar language. Applied previous research tactics to become familiar with new paradigms, language and frameworks. Able to implement features without thorough explanation. simulating real world situations.

Implemented the following features for Jungle:

Sold Out Badge: Implemented boolean function to display badge when inventory 0.
Admin Categories: Created restful routes to be able to create new categories within the admin namespace.
User Authentication: User is able to signup/login to Jungle where password is encrypted and email is validated through uniqueness to ensure non existing user.
Enhanced Order Page: Order details shown with description, quantity and cart total upon successful payment.
Confirmation Email: Email is sent to user to confirm purchase with order details.
Product Ratings: Users logged in are able to leave reviews for each product and can delete reviews. Visitors are able to see product ratings, but must be logged in in order to leaver review.
Code is DRY and modular, follow The Rails Way.

## Screenshots
<img width="1470" alt="Screenshot 2023-06-05 at 3 21 46 PM" src="https://github.com/shilpashaji1204/jungle-rails/assets/121919958/8aba0b2d-494a-4b01-9e18-09384bf567df">

## Stack

* Rails
* Ruby
* RSpec
* ERB
* Boostrap

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
