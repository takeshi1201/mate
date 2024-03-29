# -*- encoding: utf-8 -*-
# stub: refile 0.6.2 ruby lib spec

Gem::Specification.new do |s|
  s.name = "refile".freeze
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "spec".freeze]
  s.authors = ["Jonas Nicklas".freeze]
  s.date = "2019-11-16"
  s.email = ["jonas.nicklas@gmail.com".freeze]
  s.files = ["app/assets/javascripts/refile.js".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "lib/refile.rb".freeze, "lib/refile/app.rb".freeze, "lib/refile/attacher.rb".freeze, "lib/refile/attachment.rb".freeze, "lib/refile/attachment/active_record.rb".freeze, "lib/refile/attachment_definition.rb".freeze, "lib/refile/backend/file_system.rb".freeze, "lib/refile/backend/s3.rb".freeze, "lib/refile/backend_macros.rb".freeze, "lib/refile/custom_logger.rb".freeze, "lib/refile/file.rb".freeze, "lib/refile/file_double.rb".freeze, "lib/refile/image_processing.rb".freeze, "lib/refile/rails.rb".freeze, "lib/refile/rails/attachment_helper.rb".freeze, "lib/refile/random_hasher.rb".freeze, "lib/refile/signature.rb".freeze, "lib/refile/simple_form.rb".freeze, "lib/refile/type.rb".freeze, "lib/refile/version.rb".freeze, "spec/refile/active_record_helper.rb".freeze, "spec/refile/app_spec.rb".freeze, "spec/refile/attachment/active_record_spec.rb".freeze, "spec/refile/attachment_helper_spec.rb".freeze, "spec/refile/attachment_spec.rb".freeze, "spec/refile/backend/file_system_spec.rb".freeze, "spec/refile/backend_examples.rb".freeze, "spec/refile/backend_macros_spec.rb".freeze, "spec/refile/custom_logger_spec.rb".freeze, "spec/refile/features/direct_upload_spec.rb".freeze, "spec/refile/features/multiple_upload_spec.rb".freeze, "spec/refile/features/normal_upload_spec.rb".freeze, "spec/refile/features/presigned_upload_spec.rb".freeze, "spec/refile/features/simple_form_spec.rb".freeze, "spec/refile/fixtures/hello.txt".freeze, "spec/refile/fixtures/image.jpg".freeze, "spec/refile/fixtures/large.txt".freeze, "spec/refile/fixtures/monkey.txt".freeze, "spec/refile/fixtures/world.txt".freeze, "spec/refile/spec_helper.rb".freeze, "spec/refile_spec.rb".freeze]
  s.homepage = "https://github.com/refile/refile".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Simple and powerful file upload library".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>.freeze, ["~> 2"])
      s.add_runtime_dependency(%q<sinatra>.freeze, ["~> 2.0.0.beta2"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rest-client>.freeze, ["~> 2"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 2.0.0.beta2"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rest-client>.freeze, ["~> 2"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0.0.beta2"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
  end
end
