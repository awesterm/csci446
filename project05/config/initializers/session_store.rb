# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project05_session',
  :secret      => '9b5f5481314dd58fbfc7bb2196eb4a21681063a1586b389053f293f4711341970cd486284e30d2b319c5b5112fa9b3bbb743990106316c4e7c0c32cf6fae124e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
