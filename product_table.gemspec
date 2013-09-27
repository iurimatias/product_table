$:.push File.expand_path("../lib", __FILE__)
require "product_table/version"

Gem::Specification.new do |s|
  s.name        = "product_table"
  s.version     = ProductTable::VERSION
  s.authors     = ["Iuri Matias"]
  s.email       = ["iuri.matias@gmail.com"]
  s.homepage    = "https://github.com/iurimatias/product_table"
  s.summary     = %q{code kata - calculate the produt of a list of numbers}
  s.description = %q{}

  s.rubyforge_project = "product_table"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "pry"
  s.add_development_dependency "rspec"

end
