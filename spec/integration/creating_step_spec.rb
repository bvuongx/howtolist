require 'spec_helper'

  feature 'Creating Steps' do
    before do
    visit '/'
    click_link 'New Step'
  end

  scenario "can create a step" do
    fill_in 'Step', :with => 'TextMate 2'
    click_button 'Create Step'
    page.should have_content('Step has been created.')

    step = step.find_by_name("TextMate 2")
    page.current_url.should == step_url(step)
    title = "TextMate 2 -Steps - How To List"
    find("title").should have_content(title)
  end

  scenario "can not create a step without a name" do
    click_button 'Create Step'
    page.should have_content("Step has not been created.")
    page.should have_content("Step can't be blank")
  end
end
