require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :fname => "MyString",
      :lname => "MyString",
      :email => "MyString",
      :pw_digest => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_fname[name=?]", "user[fname]"

      assert_select "input#user_lname[name=?]", "user[lname]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_pw_digest[name=?]", "user[pw_digest]"

      assert_select "input#user_image[name=?]", "user[image]"
    end
  end
end
