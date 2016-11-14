# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'razorpay/constants'

Gem::Specification.new do |spec|
  spec.name          = 'razorpay'
  spec.version       = Razorpay::VERSION
  spec.authors       = ['Abhay Rana']
  spec.email         = ['nemo@razorpay.com']
  spec.summary       = "Razorpay's Ruby API"
  spec.description   = 'Official ruby bindings for the Razorpay API'
  spec.homepage      = 'https://razorpay.com/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 10.5'
  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.add_development_dependency 'webmock', '~> 1.24'
  spec.add_development_dependency 'simplecov', '~> 0.11'
  spec.add_dependency 'httparty', '~> 0.8'
end
