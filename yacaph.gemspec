Gem::Specification.new do |s|
  s.name             = 'yacaph'
  s.version          = "0.2.2"
  s.date             = "2015-02-12"
  s.platform         = Gem::Platform::RUBY

  # I did not put original author's e-mail here because I don't think
  # he supports this code anymore.
  s.author           = "Eric Methot"
  s.email            = "cameel2@gmail.com"
  s.homepage         = "http://github.com/cameel/captcha"
  s.summary          = "A captcha plugin for Rails"

  s.extra_rdoc_files = ["README.rdoc"]
  s.has_rdoc         = false
  s.files            = Dir['README.rdoc', '*.rb', 'lib/**/*', 'rails/**/*'].to_a
  s.require_path     = "lib"

  s.add_dependency 'rmagick',      '>= 2.5.2'
  s.add_dependency 'actionpack',   '>= 3.0.0'
  s.add_dependency 'activerecord', '>= 3.0.0'
end
