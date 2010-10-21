specifications = Gem::Specification.new do |spec| 
  spec.name = "before_test"
  spec.version = "1.0.0"
  spec.author = "Philippe Cantin"
  spec.homepage = "http://github.com/anoiaque/before_test"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "Make enable to execute setup before one given test with TestUnit"
  spec.description = "With RSpec we can do before test do ... This gem enable to do so with test unit"
  spec.files = Dir['lib/**/*.rb']
  spec.require_path = "lib"
  spec.test_files  = Dir['test/**/*.rb']
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.rdoc"]
end