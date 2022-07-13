# Project: Flight Booker
Project where one must create a one-way airlines flight booker app.

## Description
The Flight Booker project consists of building the first three steps of a typical checkout process for booking an airlines flight:

* Enter desired dates / airports and click “Search”
* Choose from among a list of available flights
* Enter passenger information for all passengers

This project will not cover the integration of entering billing information. However, this will provide a subtle understanding the kind of tasks you’ll have to do when handling user orders. It will also give lots of experience in populating and building dropdown menus, radio buttons, and nested submissions.

## Getting Started

To get the app working , be sure to install all dependencies.

```
bundle install
```

Create database and migrate schema:

```
rails db:create
rails db:migrate
```

Be sure to load the data into the database using:
```
rails db:seed
```

Now run the application:

```
rails s
```

### Ruby Version

* Rails 7 requires Ruby 2.7.0 or newer.

## Help

Run command to view all of the options you can pass to rails application.
```
rails new --help
```
## Links
[Heroku App](https://vast-refuge-46770.herokuapp.com/)

## Web Resources

* [The Odin Project](https://www.theodinproject.com/)
* [Rails Guides](https://guides.rubyonrails.org/)
