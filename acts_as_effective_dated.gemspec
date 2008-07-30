Gem::Specification.new do |s|
  s.name = "acts_as_effective_dated"
  s.version = "0.0.2"
  s.date = "2008-07-20"
  s.summary = "Effective dating for ActiveRecord"
  s.email = "tobinibot@gmail.com"
  s.homepage = "http://github.com/tobinibot/acts_as_effective_dated"
  s.description = "acts_as_effective_dated adds the ability to have effective dated records in ActiveRecord"
  s.has_rdoc = false
  s.authors = ["Tobin Juday"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "acts_as_effective_dated.gemspec", "lib/acts_as_effective_dated.rb", "lib/acts_as_effective_dated/version.rb", "lib/acts_as_effective_dated/base.rb", "test/test_acts_as_effective_dated.rb", "test/test_helper.rb"]
  s.test_files = ["test/test_acts_as_effective_dated.rb", "test/test_helper.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency("activerecord", [">= 2.1.0"])
end