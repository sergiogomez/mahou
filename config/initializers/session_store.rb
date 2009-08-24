# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mahou_session',
  :secret      => '6f5fb883997f77c1e0a310edd664994b252c84531d62fde595e20f5befabaa9e9162f93538c8e4db52648201d7623965a5ee9258f2958993d5bd1952c9607b38'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
