# Flying Club

FlyingClub is a Ruby on Rails application for managing aeronaves and pilotos.

## Ruby and Rails version

This application uses Ruby version 3.2.0, and uses Rails version 7.0.7.

## Database

We're using PostgreSQL for our database. Adjust the `config/database.yml` file to fit your PostgreSQL configuration.

## System dependencies

The application's gem dependencies are:

- bootsnap-1.16.0
- debug-1.8.0
- devise-4.8.1
- jbuilder-2.11.5
- jsbundling-rails-1.1.1
- pg-1.4.5
- puma-5.6.5
- rails-7.0.7
- sprockets-rails-3.4.2
- stimulus-rails-1.2.1
- turbo-rails-1.3.2
- web-console-4.2.0
- bundler-2.4.18

## Database creation and initialization

You can create and setup your database by running:

```bash 
rails db:create 
rails db:migrate 
rails db:seed 
```

[//]: # (* Services &#40;job queues, cache servers, search engines, etc.&#41;)

## How to run the test suite

This application uses RSpec for testing. Follow these steps to run the tests:

1. Make sure all of the necessary dependencies are installed:

    ```bash
    bundle install
    ```

2. Create and prepare your testing database by running:

    ```bash
    RAILS_ENV=test rake db:create db:migrate
    ```

3. To run all the tests at once, execute the RSpec command:

    ```bash
    bundle exec rspec
    ```

This command will run all tests in the `spec` directory.

## Production deployment instructions
This application is configured to be deployed on Render.

### Prerequisites

- Make sure you have a Render account. If not, you can sign up at [Render.com](https://render.com).
- Ensure you have installed [Render CLI](https://render.com/docs/cli).

### Steps

1. Clone the repository:

    ```bash
    git clone https://github.com/YourUsername/FlyingClub.git
    ```

2. Navigate to the application directory:

    ```bash
    cd FlyingClub
    ```

3. Log in to Render:

    ```bash
    render login
    ```

4. Deploy your application:

    ```bash
    render up
    ```

   Follow the prompt instructions and select the right options for your application. When it asks for your environment, select `production`.


5. After setup, your app will be available at `https://your-app-name.onrender.com`
