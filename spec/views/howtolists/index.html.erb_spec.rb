require 'spec_helper'

describe "howtolists/index" do
  before(:each) do
    assign(:howtolists, [
      stub_model(Howtolist,
        :title => "Title"
      ),
      stub_model(Howtolist,
        :title => "Title"
      )
    ])
  end

  it "renders a list of howtolists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
