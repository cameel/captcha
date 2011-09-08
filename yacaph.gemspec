Gem::Specification.new do |s|
  s.name             = 'yacaph'
  s.version          = "0.2.2"
  s.date             = "2011-09-07"
  s.platform         = Gem::Platform::RUBY

  # I did not put original author's e-mail here because I don't think
  # he supports this code anymore.
  s.author           = "Eric Methot"
  s.email            = "mariusz@mondoreale.pl"
  s.homepage         = "http://github.com/mondoreale/captcha"
  s.summary          = "A captcha plugin for Rails"

  s.extra_rdoc_files = ["README.rdoc"]
  s.has_rdoc         = false
  s.files            = Dir['README.rdoc', '*.rb', 'lib/**/*', 'rails/**/*'].to_a
  s.require_path     = "lib"

  s.add_dependency 'rmagick',      '>= 2.5.2'
  s.add_dependency 'actionpack',   '>= 3.0.0'
  s.add_dependency 'activerecord', '>= 3.0.0'
end
