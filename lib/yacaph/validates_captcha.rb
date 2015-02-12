module ValidatesCaptcha
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def validates_captcha
      helper CaptchaHelper
      include ValidatesCaptcha::InstanceMethods
    end
  end

  module InstanceMethods
    def captcha_validated?(options = {})
       captcha = options.delete :captcha
       captcha_validation = options.delete :captcha_validation
       raise ArgumentError.new ':captcha has to be a String' unless captcha.is_a?(String)
       raise ArgumentError.new ':captcha_validation has to be a String' unless captcha_validation.is_a?(String)
       CaptchaUtil::encrypt_string(captcha.to_s.gsub(' ', '').downcase) == captcha_validation
    end
  end
end
