require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example', email: 'example@email.com', password: 'tatata')
  end

  test 'create user' do
    assert @user.valid?
  end

end
