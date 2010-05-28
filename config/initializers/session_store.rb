# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_LAUNCH-Tools_session',
  :secret      => '4dd67e755adecf90ea447cc3cd2d228b9f0f98445aa28c85b4265130c8020531d32a137a0d973e7d3f12fc9956d02a645524a3e9f754d8c759d5b847b8b5a448'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
