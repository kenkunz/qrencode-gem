Gem::Specification.new do |s|
  s.name = 'qrencode-gem'
  s.version = '0.1.0'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Ken Kunz']
  s.email = ['kennethkunz@gmail.com']
  s.homepage = 'http://github.com/kenkunz/qrencode-gem'
  s.summary = 'Gem wrapper to install libqrencode on Heroku'
  s.description = 'Gem wrapper to install libqrencode on Heroku'

  s.files = Dir.glob("vendor/**/*") + %w(Readme)
  s.extensions = ['vendor/qrencode-3.1.1/configure']
end
