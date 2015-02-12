module CaptchaFormBuilder
	def captcha_image
		@captcha_image ||= CaptchaUtil::random_image
		return @template.image_tag '/system/captcha/' + @captcha_image
	end

	def captcha_input_text(options = {})
		return text_field(:captcha, options)
	end

	def captcha_hidden_text
		@captcha_image ||= CaptchaUtil::random_image
		return hidden_field(:captcha_validation, {:value => @captcha_image.gsub(/\..+$/, '')})
	end
end
