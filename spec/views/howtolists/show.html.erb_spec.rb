require 'spec_helper'

describe "howtolists/show" do
  before(:each) do
    @howtolist = assign(:howtolist, stub_model(Howtolist,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
