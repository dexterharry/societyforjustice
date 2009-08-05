# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_societyforjustice_session',
  :secret      => '7dc17a1323a07dd4f21baac5b78b00bc44797f50ca28ed20fb7e4b7b904408b77a8865ed5c9bcab5d260a1713891c1e0aeda5df3bb5532ddd291516b17a30789'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
