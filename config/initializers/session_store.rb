# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_qrcode_session',
  :secret      => '5c19fce0b6f9634bd6882847872955317270fe7ae8dcd041bd41bee12dcfbbc81c404ef7eaba56855f07b0da6abca45f838e07ec1e4d0ffe794790e115cfff86'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
