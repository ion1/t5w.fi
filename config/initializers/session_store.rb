# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_t5w.fi_session',
  :secret => '6c7dbf325822473644d2fddb05da981248a1a33833a02e8cab17aefe951d30e54ee4a0de8f5cf511e919302b854785bb6a34b9e712c65f0d4fb2494068fa9c5a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
