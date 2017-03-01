require 'rails_helper'

RSpec.describe "spots/edit", type: :view do
  before(:each) do
    @spot = assign(:spot, Spot.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit spot form" do
    render

    assert_select "form[action=?][method=?]", spot_path(@spot), "post" do

      assert_select "input#spot_latitude[name=?]", "spot[latitude]"

      assert_select "input#spot_longitude[name=?]", "spot[longitude]"

      assert_select "input#spot_name[name=?]", "spot[name]"

      assert_select "input#spot_address[name=?]", "spot[address]"

      assert_select "input#spot_title[name=?]", "spot[title]"
    end
  end
end
