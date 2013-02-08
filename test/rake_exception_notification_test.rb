require 'test_helper'
require 'rake'

class RakeExceptionNotificationTest < ActiveSupport::TestCase
  setup do
    Dummy::Application.load_tasks
  end

  # TODO: don't work now
  test "should track rake exception" do
    ExceptionNotifier::Notifier.expects(:background_exception_notification)

    begin
      Rake::Task['rescue_exception_with_env'].invoke
    rescue ZeroDivisionError => e
      # don't do anything
    end
  end
end