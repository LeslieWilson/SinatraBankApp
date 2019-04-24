require 'spec_helper'

feature "view /" do
    scenario "user clicks 'checking' button" do
    visit "/"
    click_button('Checking')
    expect(page).to have_content 'DS Checking Account'
    expect(page).to have_content 'What would you like to do?'
    expect(page).to_not have_content "Leslie United DollarStorage"

end
end

feature "view bank homepage" do
  scenario "user visits / path" do
    visit "/"
    expect(page).to have_content("Leslie United DollarStorage")
  end
  end

  feature "view /amountTransferSav" do
      scenario "/amountTransferSav has a submit button " do
          visit "/amountTransferSav"
          expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountTransferCheck" do
    scenario "/amountTransferCheck has a submit button " do
        visit "/amountTransferCheck"
        expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountDeposit" do
    scenario "/amountDeposit has a submit button " do
        visit "/amountDeposit"
        expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountWithdraw" do
    scenario "/amountWithdraw has a submit button " do
        visit "/amountWithdraw"
        expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountWithdrawSav" do
    scenario "/amountWithdrawSav has a submit button " do
        visit "/amountWithdrawSav"
        expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountDepositSav" do
    scenario "/amountDepositSav has a submit button" do
        visit "/amountDepositSav"
        expect(page).to have_selector("input[type=submit]")
end
end

feature "view /amountDepositSav" do
    scenario "/amountDepositSav has a submit button" do
        visit "/amountDepositSav"
        expect(page).to have_selector("input[type=submit]")
end
end





#
# RSpec::Matchers.define :have_submit_button do |value|
#     match do |actual|
#         expect(actual).to have_selector("input[type=submit][value]")
