Tweetr
========================
Tweetr lets you search for Twitter users and view their last 25 tweets.
Try it out [here](https://murmuring-castle-94002.herokuapp.com/)

Libraries in Use
----------------
#### [twitter]('https://github.com/sferik/twitter')
This is a popular wrapper for the Twitter API. It wasn't really necessary for the functionality in this app but since it's widely used and I have experience with it, I went with it.

#### [devise](https://github.com/plataformatec/devise)
I used devise to get user auth set up quickly. Authentication is too important and easy to get wrong so I prefer using something like devise which is widely adopted.

#### [postgreSQL](https://www.postgresql.org/)
There are cooler databases but postgres is nice, I've used it a bunch, and I already had it installed on my machine. 

#### [rspec](http://rspec.info/)
Rspec has very easy to read syntax and I've only worked on projects that use it. I would like to try one of the other options (Test::Unit or MiniTest) at some point.

What I didn't use: 

#### Bootstrap (or another frontend framework)
I debated whether I should use frontend framework or not. Even though I'm not a frontend wizard, I tend to be opinionated about UI and sometimes obsess over making the frontend look nice. Since we weren't supposed to spend too much time on this, I elected to use plain old HTML and CSS.

Setup
-----

### Local

### Installation on OSX
#### 1. Cloning the Repository
1. Clone the tweetr repository
2. Open Terminal and ‘cd’ into the repository’s folder.

#### 2. Install Postgresql
`brew install postgresql`

#### 3. Install the bundle
`bundle install`

#### 4. Create the database
1. `open config/database.yml`
2. Change line 6 to your username
3. `bundle exec rake db:setup`

#### 5. Add Twitter Credentials
You will need to have access to a Twitter API consumer key and consumer secret. [Get yours here](https://dev.twitter.com/)
1. Add the key and secret to environmental variables with: `export TWITTER_CONSUMER_KEY=<your key goes here>` `export TWITTER_CONSUMER_SECRET=<your secret goes here>`.

#### 6. Start the server 
1. `rails s`
2. Visit http://localhost:3000/ .

Tests
------
Run all tests with `rspec spec` from the root folder.



