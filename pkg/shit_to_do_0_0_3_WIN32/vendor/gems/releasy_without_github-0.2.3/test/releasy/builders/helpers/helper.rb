require File.expand_path("../../../teststrap", File.dirname(__FILE__))

def new_project
  project = Releasy::Project.new
  project.name = "Test App"
  project.version = "0.1"
  project.files = source_files
  project.exposed_files = %w[README.txt LICENSE.txt]
  project.add_link "http://spooner.github.com/libraries/releasy/", "Releasy website"
  project.output_path = output_path

  project
end

# Hack to allow test to work using a different gemfile than Releasy's.
def clear_bundler_env
  gemfile, bin_path = ENV['BUNDLE_GEMFILE'], ENV['BUNDLE_BIN_PATH']
  ENV['BUNDLE_GEMFILE'], ENV['BUNDLE_BIN_PATH'] = '', ''
  ret_val = yield
  ENV['BUNDLE_GEMFILE'], ENV['BUNDLE_BIN_PATH'] = gemfile, bin_path
  ret_val
end

def clear_all_env
  rubylib, rubyopts = ENV['RUBYLIB'], ENV['RUBYOPTS']
  ENV['RUBYLIB'], ENV['RUBYOPTS'] = '', ''
  ret_val = clear_bundler_env { yield }
  ENV['RUBYLIB'], ENV['RUBYOPTS'] = rubylib, rubyopts
  ret_val
end

def data_file(file)
  File.expand_path("test/releasy/builders/data/#{file}", $original_path)
end

def gemspecs_to_use
  # Don't add Releasy since it is may be being run locally and thus not work at all.
  Gem.loaded_specs.values.find_all {|s| %w[bundler cri ocra thor].include? s.name }
end

def link_file
  <<END
[InternetShortcut]
URL=http://spooner.github.com/libraries/releasy/
END
end