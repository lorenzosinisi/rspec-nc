require 'rspec/core/formatters/base_formatter'
require 'terminal-notifier'

class Nc < RSpec::Core::Formatters::BaseFormatter
  SUCCESS_EMOJI = "\u2705"
  FAILURE_EMOJI = "\u26D4"

  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    body = "Finished in #{notification.formatted_duration}\n#{notification.totals_line}"
    if notification.failure_count > 0
      title = "#{FAILURE_EMOJI} #{directory_name}: #{notification.failure_count} failed example#{notification.failure_count == 1 ? nil : 's'}"
      notify title, body
    end
    
  end

  private

  def directory_name
    File.basename File.expand_path '.'
  end

  def notify(title, body)
    TerminalNotifier.notify body, title: title
  end
end
