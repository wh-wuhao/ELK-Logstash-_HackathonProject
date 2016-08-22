# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# Add any asciidoc formatted documentation here
# An example output that does nothing.
class LogStash::Outputs::Example < LogStash::Outputs::Base
  config_name "example"

  # If declared logstash will only allow a single instance of this plugin
  # to exist, regardless of how many CPU cores logstash detects. This is best
  # used in cases like the File output, where separate threads writing to a single
  # File would only cause problems.
  #
  # respond_to? check needed for backwards compatibility with < 2.2 Logstashes
  declare_workers_not_supported! if self.respond_to?(:declare_workers_not_supported!)

  # If declared threadsafe logstash will only ever create one
  # instance of this plugin per pipeline.
  # That instance will be shared across all workers
  # It is up to the plugin author to correctly write concurrent code!
  #
  # respond_to? check needed for backwards compatibility with < 2.2 Logstashes
  declare_threadsafe! if self.respond_to?(:declare_threadsafe!)

  public
  def register
    # Does the same thing as declare_workers_not_supported!
    # But works in < 2.2 logstashes
    # workers_not_supported
  end # def register

  public
  # Takes an array of events
  def multi_receive(events)
  end # def multi_receive

  public
  # Needed for logstash < 2.2 compatibility
  # Takes events one at a time
  def receive(event)
  end # def receive

end # class LogStash::Outputs::Example