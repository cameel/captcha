$:.unshift "#{File.dirname(__FILE__)}/lib"

require 'captcha_util'
require 'captcha_helper'
require 'validates_captcha'

AbstractController::Base.class_eval do
  include ValidatesCaptcha
end
