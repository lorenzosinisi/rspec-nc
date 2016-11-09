require 'rspec/core/formatters/base_formatter'
require 'terminal-notifier'
require 'nc_config'


class Nc < RSpec::Core::Formatters::BaseFormatter
  puts self, ": WARNING this is just a test for a possible implementation, do not use that version in production"

  RSpec::Core::Formatters.register(self, NcConfig.notification_type || :dump_summary)
  
  def dump_summary(notification)
    if NcConfig.constraint == :only_on_faliure
      notify_only_on_faliure(notification)
    else
      notify_dump_summary(notification)
    end
  end

  def notify_dump_summary(notification)
    body = "Finished in #{notification.formatted_duration}\n#{notification.totals_line}"
    title = if notification.failure_count > 0
              "#{NcConfig.faliure_emoji} #{directory_name}: #{notification.failure_count} failed example#{notification.failure_count == 1 ? nil : 's'}"
            else
              "#{NcConfig.success_emoji} #{directory_name}: Success"
            end

    notify(title, body)
  end

  def notify_only_on_faliure(notification)
   if notification.failure_count > 0
      body = "Finished in #{notification.formatted_duration}\n#{notification.totals_line}"
      title = "#{NcConfig.faliure_emoji} #{directory_name}: #{notification.failure_count} failed example#{notification.failure_count == 1 ? nil : 's'}"
      notify(title, body)
    end
  end

  def example_failed(notification)
    example = notification.example
    body = "FULL DESCRIPTION #{example.metadata[:full_description]}\n#{example.exception}"
    title = "#{NcConfig.faliure_emoji} #{directory_name}: Failure"
    unless @failed
      notify title, body
    end
    @failed = true
  end

  private

  def directory_name
    File.basename(File.expand_path '.')
  end

  def notify(title, body)
    TerminalNotifier.notify(body, title: title)
  end
end
