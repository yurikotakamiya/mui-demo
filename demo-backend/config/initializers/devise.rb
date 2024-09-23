# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
    # The secret key used by Devise. Devise uses this key to generate
    # random tokens. Changing this key will render invalid all existing
    # confirmation, reset password and unlock tokens in the database.
    config.secret_key = 'your_secret_key'
  
    # ==> Mailer Configuration
    # Configure the e-mail address which will be shown in Devise::Mailer,
    config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
    # Configure the class responsible to send e-mails.
    # config.mailer = 'Devise::Mailer'
  
    # ==> ORM configuration
    # Load and configure the ORM. Supports :active_record (default) and
    # :mongoid (bson_ext recommended) by default. Other ORMs may be
    # available as additional gems.
    require 'devise/orm/active_record'
  
    # ==> Configuration for any authentication mechanism
    # Configure which keys are used when authenticating a user. The default is
    # just :email. You can configure it to use [:username, :subdomain], so for
    # authenticating a user, both parameters are required. Remember that those
    # parameters are used only when authenticating and not when retrieving from
    # session. If you need permissions, you should implement that in a before filter.
    # You can also supply a hash where the value is a boolean determining whether
    # or not authentication should be aborted when the value is not present.
    # config.authentication_keys = [:email]
  
    # More configuration options can be added here
  end