require 'spec_helper'

feature "view bank homepage" do
  scenario "user visits / path" do
    visit "/"
    expect(page).to have_content("Leslie United DollarStorage")
  end

  feature "bank homepage has 2 buttons" do
      scenario "user views 2 buttons at / path " do
          visit "/"
          expect(page).to have_selector("input[type=submit][value= 'Checking']")
end

RSpec::Matchers.define :have_submit_button do |value|
    match do |actual|
        expect(actual).to have_selector("input [type=submit][value]")
