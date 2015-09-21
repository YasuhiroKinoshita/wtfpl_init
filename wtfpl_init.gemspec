# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wtfpl_init/version'

Gem::Specification.new do |spec|
  spec.name          = "wtfpl_init"
  spec.version       = WtfplInit::VERSION
  spec.authors       = ["Kinoshita.Yasuhiro"]
  spec.email         = ["WhoIsDissolvedGirl+github@gmail.com"]
  spec.license       = 'WTFPL'

  spec.summary       = %q{Download WTFPL}
  spec.description   = %q{Download WTFPL license file and rename to LICENSE.md or something}
  spec.homepage      = "https://github.com/YasuhiroKinoshita/wtfpl_init"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
