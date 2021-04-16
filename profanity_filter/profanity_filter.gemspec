# Robert Foster X17140404
# run rake file command if you make changes in this file
# Needs Jewler gem for creation/ built in another app and had trouble incorporating into this
# through some investigation think it could be mysql DB not working

Gem::Specification.new do |spec|
  spec.name = 'profanity_filter'
  spec.version = '1.0.0'
  spec.description = "Custom Gem for NewsWebsite (Profanity filter)"
  spec.email = "Robert253web@gmail.com"

  spec.files = [
    "Rakefile",
    "config/dictionary.yml",
    "lib/profanity_filter.rb",
    "profanity_filter.gemspec",
  ]
  spec.require_paths = [%q{lib}]
  spec.summary = %q{A Rails plugin gem for filtering out profanity.}

  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.0.0') then
    else
    end
  else
  end
end
