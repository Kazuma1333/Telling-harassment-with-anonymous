require 'test_helper'

class AskMailerTest < ActionMailer::TestCase
  test "get_email" do
    mail = AskMailer.get_email
    assert_equal "Get email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
