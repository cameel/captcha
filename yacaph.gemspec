Gem::Specification.new do |s|
  s.name             = 'yacaph'
  s.version          = "0.2.1"
  s.date             = "2009-06-18"
  s.platform         = Gem::Platform::RUBY

  # I did not put original author's e-mail here because I don't think
  # he supports this code anymore.
  s.author           = "Eric Methot"
  s.email            = ""
  s.homepage         = "http://github.com/zendesk/captcha"
  s.summary          = "A captcha plugin for Rails"

  s.extra_rdoc_files = ["README"]
  s.has_rdoc         = false
  s.files            = Dir['README', '*.rb', 'lib/**/*', 'rails/**/*', 'tasks/**/*'].to_a
  s.require_path     = "lib"

  s.add_dependency 'rmagick',      '>= 2.5.2'
  s.add_dependency 'actionpack',   '>= 2.3.2'
  s.add_dependency 'activerecord', '>= 2.3.2'
end
