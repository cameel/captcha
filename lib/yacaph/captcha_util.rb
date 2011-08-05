require 'digest/sha1'

module CaptchaUtil

  def self.random_image
    @@captcha_files ||= Dir.glob("#{Rails.root}/public/system/captcha/*.*").map {|f| File.basename(f)}
    @@captcha_files[rand(@@captcha_files.size)]
  end

  def self.encrypt_string(string)
    captcha_salt = salt()

    if captcha_salt == nil
      Rails.logger.warn("You either have no config.secret_token set in your Rails configuration of CAPTCHA_SALT is nil. Set your token or define CAPTCHA_SALT (e.g. in application.rb). Without a random salt your captcha is very easy to break")
      captcha_salt = ''
    end

    Digest::SHA1.hexdigest("#{captcha_salt}#{string}")
  end

  # If there is a CAPTCHA_SALT constant defined, return it.
  # Otherwise return application's secret_token
  def self.salt
    if defined?(CAPTCHA_SALT)
      return CAPTCHA_SALT
    else
      return Rails.application.config.secret_token
    end
  end

end
