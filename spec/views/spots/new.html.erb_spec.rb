require 'rails_helper'

RSpec.describe "spots/new", type: :view do
  before(:each) do
    assign(:spot, Spot.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new spot form" do
    render

    assert_select "form[action=?][method=?]", spots_path, "post" do

      assert_select "input#spot_latitude[name=?]", "spot[latitude]"

      assert_select "input#spot_longitude[name=?]", "spot[longitude]"

      assert_select "input#spot_name[name=?]", "spot[name]"

      assert_select "input#spot_address[name=?]", "spot[address]"

      assert_select "input#spot_title[name=?]", "spot[title]"
    end
  end
end
