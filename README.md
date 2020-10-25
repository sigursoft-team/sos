# sos
Simple SOS web application.
# Install
- git clone project
- cd to folder
- `bundle install`
- Run migrations: `bundle exec sequel -m db/migrations sqlite://db/development.sqlite3`
- Then you can just run rackup and go to http://localhost:3000
