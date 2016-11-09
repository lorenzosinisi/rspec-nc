# -*- encoding: utf-8 -*-
# stub: rspec-nc 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-nc"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Odin Dutton"]
  s.date = "2016-11-09"
  s.description = "https://github.com/twe4ked/rspec-nc"
  s.email = ["odindutton@gmail.com"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "LICENSE", "README.markdown", "Rakefile", "lib/nc.rb", "lib/nc_fail.rb", "lib/nc_first_fail.rb", "rspec-nc.gemspec", "spec/nc_fail_spec.rb", "spec/nc_first_fail_spec.rb", "spec/nc_spec.rb", "spec/test.rb"]
  s.homepage = "https://github.com/twe4ked/rspec-nc"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "RSpec formatter for Mountain Lion's Notification Center"
  s.test_files = ["spec/nc_fail_spec.rb", "spec/nc_first_fail_spec.rb", "spec/nc_spec.rb", "spec/test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<terminal-notifier>, [">= 1.4"])
      s.add_runtime_dependency(%q<rspec>, [">= 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<terminal-notifier>, [">= 1.4"])
      s.add_dependency(%q<rspec>, [">= 3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<terminal-notifier>, [">= 1.4"])
    s.add_dependency(%q<rspec>, [">= 3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
