require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example', email: 'example@email.com')
  end

  test 'create user' do
    assert @user.valid?
  end
end
