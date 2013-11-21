# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.


Turkey::Application.config.secret_key_base = '3efa61810cef6e154e7ec272610d32a573583201af7086aea93829f243ad24550513d4ff26548180776a05453aca343e66b89121da276fcfeb75a0757cfdb994'

# config.secret_key = 'a8c4d45dcf56fd6e7323e483400c7ce96cd0a5772dcfddad257c1436e018519370b80fc9cfbb4fce923a9d604b83bf75f14098793f11e368b8cacb096b0a4ec2' if Rails.env == 'production'

