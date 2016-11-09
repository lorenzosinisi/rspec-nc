module NcConfig
  class Settings
    attr_accessor :notification_type, :constraint, :success_emoji, :faliure_emoji
  end

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Settings.new
    end
  end

  def self.configuration
    @configuration ||= Settings.new
  end


  def self.notification_type
    configuration.notification_type
  end

  def self.success_emoji
    configuration.success_emoji || "\u2705"
  end

  def self.faliure_emoji
    configuration.faliure_emoji || "\u26D4"
  end

  def self.constraint
    configuration.constraint
  end

  def self.configure
    yield(configuration)
  end
end