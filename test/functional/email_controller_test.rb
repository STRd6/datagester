require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  context "Receiving an email" do
    should "create an email record" do
      assert_difference "Email.count", +1 do
        post :create, { :to => 'test@test.info', :from => "test@fake.com" }
      end
    end
  end
end
