# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_depot_session',
  :secret      => '6d29d499e8086c4733ffeacb21a26a85c66ec007bb1ad317a682b81f79fca2b8714677bb2be27b002bc8328ef2a7aa88ed9601f664cf249d2fbba635e915a71b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
