  puts "using gmail smtp"
  # https://stackoverflow.com/questions/20337040/gmail-smtp-debug-error-please-log-in-via-your-web-browser
  # https://www.google.com/settings/security/lesssecureapps
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :user_name => "viachat.no@gmail.com",
    :password => "Copona!%",
    :authentication  => :login
  }

