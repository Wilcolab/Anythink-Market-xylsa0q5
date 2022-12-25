# test/models/user_test.rb
require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user needs username, email, and password' do
    user = User.new(
      username: "Nick",
      email: "fake@example.com",
      password: "password",
    )

    assert user.valid?
  end

  test 'has an isVerified boolean field' do
    user = User.new

    user.isVerified = true

    assert user.isVerified
  end

  test 'defaults to false for the field' do
    user = User.new

    assert user.isVerified == false
  end
end
