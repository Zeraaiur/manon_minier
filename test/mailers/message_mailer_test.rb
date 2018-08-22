require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact" do
    message = Message.new name: 'anna',
                          email: 'anna@example.org',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message envoyé à partir du site Web', email.subject
    assert_equal ['david.poisson.pare@gmail.com'], email.to
    assert_equal ['anna@example.org'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end
