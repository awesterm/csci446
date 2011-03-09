# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_version_session',
  :secret      => '1779f88a76bd156f432451ad55672c73af321a3c98949abf1588de2b4c5f3ec48fe70afe46fbe49510c265ed8f46fbb10fc38b8834462b7056366a0c01c5f051'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
