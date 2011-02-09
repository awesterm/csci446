# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project04_session',
  :secret      => 'c69762e295d2bcc3a387b97f7070527e9ae98dc2b5588dedf642f9435923f4dbfb9e8e61323376f99510fabfffc38b1e890308f566d5fa6749e47f0aa2dbc2a5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
