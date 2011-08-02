# FIXME: Use an assertion
fail if !defined?(Rails)

require 'yacaph/engine' if Rails::VERSION::MAJOR >= 3

require 'captcha_util'
require 'captcha_helper'
require 'validates_captcha'

AbstractController::Base.class_eval do
  include ValidatesCaptcha
end
