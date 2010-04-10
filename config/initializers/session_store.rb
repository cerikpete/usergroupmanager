# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_usergroupmanager_session',
  :secret      => 'd3f45475f435207ccdf9037a5d52b3f4c6b146c00372a87b4c931ce57f23812e66be17e5dfaa2e81612d63608f9d12e8d82ac90d9bbec9537801b5137825bb24'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
