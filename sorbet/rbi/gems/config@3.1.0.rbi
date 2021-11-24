# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `config` gem.
# Please instead update this file by running `bin/tapioca gem config`.

module Config
  extend ::Config::Validation::Schema

  class << self
    # Loads and sets the settings constant!
    def load_and_set_settings(*files); end

    # Create a populated Options instance from a settings file. If a second file is given, then the sections of that
    # file will overwrite existing sections of the first file.
    def load_files(*files); end

    def local_setting_files(config_root, env); end
    def reload!; end
    def setting_files(config_root, env); end
    def setup; end
  end
end

# The main configuration backbone
class Config::Configuration < ::Module
  # Accepts configuration options,
  # initializing a module that can be used to extend
  # the necessary class with the provided config methods
  def initialize(**attributes); end

  private

  def define_reader(name, default); end
  def define_writer(name); end
end

module Config::Integrations; end
module Config::Integrations::Rails; end

class Config::Integrations::Rails::Railtie < ::Rails::Railtie
  def preload; end
end

class Config::Options < ::OpenStruct
  include ::Enumerable
  include ::Config::Validation::Validate

  # An alternative mechanism for property access.
  # This let's you do foo['bar'] along with foo.bar.
  def [](param); end

  def []=(param, value); end
  def add_source!(source); end
  def as_json(options = T.unsafe(nil)); end
  def collect; end
  def count; end
  def each(*args, &block); end
  def empty?; end
  def exit!; end
  def has_key?(key); end
  def key?(key); end
  def keys; end

  # look through all our sources and rebuild the configuration
  def load!; end

  def max; end
  def merge!(hash); end
  def method_missing(method_name, *args); end
  def min; end
  def prepend_source!(source); end

  # look through all our sources and rebuild the configuration
  def reload!; end

  def reload_from_files(*files); end
  def select; end
  def test; end
  def to_h; end
  def to_hash; end
  def to_json(*args); end
  def zip; end

  protected

  # Recursively converts Hashes to Options (including Hashes inside Arrays)
  def __convert(h); end

  def descend_array(array); end

  private

  def respond_to_missing?(*args); end
end

# Some keywords that don't play nicely with OpenStruct
Config::Options::SETTINGS_RESERVED_NAMES = T.let(T.unsafe(nil), Array)

module Config::Sources; end

# Allows settings to be loaded from a "flat" hash with string keys, like ENV.
class Config::Sources::EnvSource
  def initialize(env, prefix: T.unsafe(nil), separator: T.unsafe(nil), converter: T.unsafe(nil), parse_values: T.unsafe(nil)); end

  # Returns the value of attribute converter.
  def converter; end

  def load; end

  # Returns the value of attribute parse_values.
  def parse_values; end

  # Returns the value of attribute prefix.
  def prefix; end

  # Returns the value of attribute separator.
  def separator; end

  private

  # Try to convert string to a correct type
  def __value(v); end
end

class Config::Sources::HashSource
  def initialize(hash); end

  # Returns the value of attribute hash.
  def hash; end

  # Sets the attribute hash
  def hash=(_arg0); end

  # returns hash that was passed in to initialize
  def load; end
end

class Config::Sources::YAMLSource
  def initialize(path, evaluate_erb: T.unsafe(nil)); end

  # Returns the value of attribute evaluate_erb.
  def evaluate_erb; end

  # returns a config hash from the YML file
  def load; end

  # Returns the value of attribute path.
  def path; end

  # Sets the attribute path
  def path=(_arg0); end
end

Config::VERSION = T.let(T.unsafe(nil), String)
module Config::Validation; end

class Config::Validation::Error < ::StandardError
  class << self
    def format(v_res); end
  end
end

module Config::Validation::Schema
  def schema(&block); end

  # Assigns schema configuration option
  def schema=(value); end
end

module Config::Validation::Validate
  def validate!; end

  private

  def validate_using!(validator); end
end
