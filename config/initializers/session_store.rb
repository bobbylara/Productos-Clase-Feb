# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_productos_session',
  :secret      => '6dfb5497ed9de3fd459a167247d8bf91e49be92eeb192bb53415266b8b92b8f6ec6f68fcb1915c8b663282f24b05fe7f0a1d47fcb6b8d50eeeceb13c82d85137'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
