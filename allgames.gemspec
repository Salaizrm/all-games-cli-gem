
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "all_games/version"

Gem::Specification.new do |spec|
  spec.name          = "allgames"
  spec.version       = AllGames::VERSION
  spec.authors       = ["'Robert Salaiz'"]
  spec.email         = ["'work.salaizrm@gmail.com'"]

  spec.summary       = %q{"lets you search game."}
  spec.description   = %q{"This gem allows you to see the list of games coming out this year and view their descriptions!"}
  spec.homepage      = "https://github.com/Salaizrm/all-games-cli-gem"
  spec.license       = "MIT"


  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
