# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fluxus_session',
  :secret      => '1a9b0c7f7bba2325485200c28207c893f2176641652d5b2c4bc97c9bc406d91e962ba753d1fd998ee435dd03e64d5eb2455a0d28a3692e42a1da0200cf5c741c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
