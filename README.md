### Read Me
Approach:
  I wanted to link to an external API, and save the desired information into my own database, along with user information for authentication.
I started by getting an API key for the Rijks museum, and creating a rails back-end. I moved all of my search methods to a search route, so that the API key would not be visible on the front-end.

  I then built a React front-end, which allowed users to login or create accounts, and then save their favorite art from the Rails search route. I passed the token to Rails, and used a JWT token for authentication.


### Project Front
[React App](https://github.com/celinechadwick/ArtBook-Front)

### Heroku App
[Heroku](https://artbook-front.herokuapp.com/)
### Installation Instructions:

1) React Slingshot:
  Dependencies:
  "axios": "0.16.2",
  "express": "4.15.3",
  "object-assign": "4.1.0",
  "react": "15.5.4",
  "react-dom": "15.5.4",
  "react-redux": "5.0.5",
  "react-router": "3.0.5",
  "react-router-redux": "4.0.8",
  "redux": "3.6.0",
  "redux-thunk": "2.1.0"

  Installation instructions:
  - run npm install

2) Rails:
gem 'rack-cors'
gem 'jwt',
gem "httparty"
gem 'pg'
gem 'rails', '5.1.2'
 Use Puma as the app server
gem 'puma', ' 3.7'
 Use SCSS for stylesheets
gem 'sass-rails', ' 5.0'
 Use Uglifier as compressor for JavaScript assets
gem 'uglifier', ' 1.3.0'
  See https://github.com/rails/execjs#readme for more supported runtimes
 gem 'therubyracer', platforms: :ruby
 Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', ' 4.2'
 Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', ' 5'
 Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', ' 2.5'
 Use Redis adapter to run Action Cable in production
gem 'bcrypt', ' 3.1.7'
 Use Capistrano for deployment
 gem 'capistrano-rails', group: :development
 Use sqlite3 as the database for Active Record
gem 'sqlite3'

Installation instructions:
- Add gems to Gemfile
- bundle install


## Project Issues:
- User is able to add artworks from the Rijks API multiple times
- User is locked out of their account if they forget the password

## Future goals:
- A User should be able to utilize the API color parameter to search artwork by color, after they select a HEX color from a wheel.
  - This will be a React component that makes a call to a rails API call, and passes in the color code they have clicked on
- Users should be able to view more information about artworks, and write posts about each artwork they have liked.
- Users should be able to see who else has liked images, so they can view those profiles
  - Saved collections should not require authentication, so users can view other profiles.
http://i.imgur.com/cD1xHE1.png
