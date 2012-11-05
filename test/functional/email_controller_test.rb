require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  context "Receiving an email" do
    should "create an email record" do
      assert_difference "Email.count", +1 do
        post :create, {
          :headers => "Test header yo!",
          :to => 'test@test.info',
          :from => "test@fake.com",
          :text => "Yo wut!",
        }
      end
    end
  end
end
