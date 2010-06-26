# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_habtm_session',
  :secret      => '46ed0e3ed8cbc063149e8a67235455c652c8309029c6c7c3c5026a9410b75cfa6d22bcdaa777f0a3cf8e50d3068c197b62806aeb6fa875c974692dc562caea32'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
