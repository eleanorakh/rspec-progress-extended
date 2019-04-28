require "rspec/core/formatters/base_text_formatter"
require "rspec/core/formatters/console_codes"

module RspecProgressExtended
  class Formatter < RSpec::Core::Formatters::BaseTextFormatter
    RSpec::Core::Formatters.register self, :start, :example_passed, :example_pending, :example_failed, :start_dump

    def start(notification)
      @i = 0
      @total = notification.count
    end

    def print_progress
      @i += 1
      if @i % 80 == 0
        output.puts " #{@i}/#{@total}"
      end
    end

    def example_passed(_notification)
      output.print RSpec::Core::Formatters::ConsoleCodes.wrap('.', :success)
      print_progress
    end

    def example_pending(_notification)
      output.print RSpec::Core::Formatters::ConsoleCodes.wrap('*', :pending)
      print_progress
    end

    def example_failed(_notification)
      output.print RSpec::Core::Formatters::ConsoleCodes.wrap('F', :failure)
      print_progress
    end

    def start_dump(_notification)
      output.puts
    end
  end
end
