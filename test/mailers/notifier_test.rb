require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "send_open_tasks" do
    mail = Notifier.send_open_tasks
    assert_equal "Send open tasks", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
