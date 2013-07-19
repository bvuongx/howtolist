require 'spec_helper'

describe "howtolists/edit" do
  before(:each) do
    @howtolist = assign(:howtolist, stub_model(Howtolist,
      :title => "MyString"
    ))
  end

  it "renders the edit howtolist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", howtolist_path(@howtolist), "post" do
      assert_select "input#howtolist_title[name=?]", "howtolist[title]"
    end
  end
end
