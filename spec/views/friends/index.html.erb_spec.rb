require 'rails_helper'

RSpec.describe "friends/index", type: :view do
  before(:each) do
    assign(:friends, [
      Friend.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        github: "Github"
      ),
      Friend.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone: "Phone",
        github: "Github"
      )
    ])
  end

  it "renders a list of friends" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Github".to_s, count: 2
  end
end
