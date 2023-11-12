# frozen_string_literal: true

require "./lib/rds_proxy_unpin/version"

Gem::Specification.new do |s|
  s.name = "rds_proxy_unpin"
  s.version = RdsProxyUnpin::VERSION
  s.license = "MIT"
  s.summary = "Patch ActiveRecord configure_connection to be RDS Proxy compatible"
  s.description = <<~EODESC
    RDS Proxy pins any connection that sets variables that ActiveRecord sets
    by default. This disables that behavior, letting connections stay unpinned,
    greatly improving performance.
  EODESC
  s.author = "James McCarthy"
  s.email = "jamie@mccarthy.vg"
  s.homepage = "https://github.com/jamiemccarthy/rds_proxy_unpin"
  s.metadata = {
    "changelog_uri" => "https://github.com/jamiemccarthy/rds_proxy_unpin/blob/main/CHANGELOG.md",
    "rubygems_mfa_required" => "true"
  }
  s.files = Dir["lib/**/*"] +
    Dir["spec/**"] + [
      "CHANGELOG.md",
      "CODE_OF_CONDUCT.md",
      "Gemfile",
      "LICENSE",
      "Rakefile",
      "README.md"
    ]

  s.required_ruby_version = ">= 2.6"

  s.add_dependency "activerecord", ">= 5.0", "< 8.0"
  s.add_dependency "railties", ">= 5.0", "< 8.0"

  s.add_development_dependency "appraisal", "~> 2.4"
  s.add_development_dependency "bundler", "~> 2.1"
  s.add_development_dependency "combustion", "~> 1.3"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "standard", "~> 1.17"
end
