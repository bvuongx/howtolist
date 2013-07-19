require 'spec_helper'

describe "howtolists/new" do
  before(:each) do
    assign(:howtolist, stub_model(Howtolist,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new howtolist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", howtolists_path, "post" do
      assert_select "input#howtolist_title[name=?]", "howtolist[title]"
    end
  end
end
