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
       {:captcha => captcha, :captcha_validation => captcha_validation}.each do |k, v|
         raise ArgumentError.new "#{k} has to be a String" unless v.is_a?(String)
       end
       raise ArgumentError.new 'To many arguments specified' unless options.empty?
       CaptchaUtil::encrypt_string(captcha.to_s.gsub(' ', '').downcase) == captcha_validation
    end
  end
end
