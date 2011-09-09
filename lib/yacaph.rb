# FIXME: Use an assertion
fail if !defined?(Rails)

require 'yacaph/engine' if Rails::VERSION::MAJOR >= 3

require "yacaph/captcha_util"
require "yacaph/captcha_helper"
require "yacaph/validates_captcha"
require "yacaph/form_builder"

AbstractController::Base.class_eval do
  include ValidatesCaptcha
end

ActiveModel::Validations.class_eval do
  include ValidatesCaptcha
end
