# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cuke-handson_session',
  :secret      => 'ad854c6373b5420f3131356b87f6ae8499907a887afb46f02fcabc1833299c4fdac5e063373c73ba3c121f407390cfce1861996e7fb40190cdd6403b150b8b2c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
