# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_demo_session',
  :secret      => '93d3707413dcff6a2d9d4aebb3386bda8ccd7afbb22bba06c9e71ff7f01ae095ceaf78a4fa8e2a5c194dfa4f9d3d60c7d6552be059a29c75c8b4c7a6803fe506'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
