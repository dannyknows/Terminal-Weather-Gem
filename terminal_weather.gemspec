require_relative 'lib/terminal_weather/version'

Gem::Specification.new do |spec|
  spec.name          = "terminal_weather"
  spec.version       = TerminalWeather::VERSION
  spec.authors       = ["danny_knows"]
  spec.email         = ["dannylow465@gmail.com"]

  spec.summary       = %q{A simple terminal based weather app}
  spec.description   = %q{The app takes current IP address and returns weather data relative to location. Also can find data on any city logged with OpenMaps}
  spec.homepage      = "https://github.com/dannyknows/Terminal-Weather-Gem.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "geocoder"
end
