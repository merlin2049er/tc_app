# ==> Configuration for :magic_link_authenticatable

# Need to use a custom Devise mailer in order to send magic links
require "devise/passwordless/mailer"
Rails.application.configure do
  config.mailer = "Devise::Passwordless::Mailer"
end


# Time period after a magic login link is sent out that it will be valid for.
# config.passwordless_login_within = 20.minutes

# The secret key used to generate passwordless login tokens. The default value
# is nil, which means defer to Devise's `secret_key` config value. Changing this
# key will render invalid all existing passwordless login tokens. You can
# generate your own secret value with e.g. `rake secret`
# config.passwordless_secret_key = nil

# When using the :trackable module, set to true to consider magic link tokens
# generated before the user's current sign in time to be expired. In other words,
# each time you sign in, all existing magic links will be considered invalid.
# config.passwordless_expire_old_tokens_on_sign_in = false
