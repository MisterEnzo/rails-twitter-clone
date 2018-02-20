require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:test_user)
  end
  
  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name: "Dave", 
                                         email:"Mat@o.",
                                         password:             "asdf",
                                         password_confirmation:"zxcv"} }
    assert_template 'users/edit'
  end
end
