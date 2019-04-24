require 'spec_helper'

# Test suites that verify: 1. url leads to correct path, 2. links function and lead to correct page, 3. buttons exist


# Verify url leads to correct page
feature "view bank homepage" do
  scenario "user visits / path" do
    visit "/"
    expect(page).to have_content("Leslie United DollarStorage")
  end
end
feature "view checking homepage" do
    scenario "user visits /checking path" do
        visit "/checking"
        expect(page).to have_content("DS Checking Account")
    end
end
feature "view savings homepage" do
    scenario "user visits /savings path" do
        visit "/savings"
        expect(page).to have_content("DS Savings Account")
    end
end
feature "view amountTransferSav page" do
    scenario "user visits /amountTransferSav page" do
    visit "/amountTransferSav"
    expect(page).to have_content("amount:")
    expect(page).to have_content("How much money would you like to move?")
    end
end

feature "view amountTransferCheck page" do
    scenario "user visits /amountTransferCheck page" do
        visit "/amountTransferCheck"
        expect(page).to have_content("amount:")
        expect(page).to have_content("How much money would you like to move?")
    end
end

feature "view amountWithdraw page" do
    scenario "user visits /amountWithdraw page" do
        visit "/amountWithdraw"
        expect(page).to have_content("amount:")
        expect(page).to have_content("How much money would you like to move?")
    end
end


feature "view amountWithdrawSav page" do
    scenario "user visits /amountWithdrawSav page" do
        visit "/amountWithdrawSav"
        expect(page).to have_content("amount:")
        expect(page).to have_content("How much money would you like to move?")
    end
end

feature "view amountDeposit page" do
    scenario "user visits /amountDeposit page" do
        visit "/amountDeposit"
        expect(page).to have_content("amount:")
        expect(page).to have_content("How much money would you like to move?")
    end
end

feature "view amountDepositSav page" do
    scenario "user visits /amountDepositSav page"do
        visit "/amountDepositSav"
        expect(page).to have_content("amount:")
        expect(page).to have_content("How much money would you like to move?")
    end
end


# Verify links work and lead to proper page
feature "view /" do
    scenario "user clicks 'checking' button from home screen" do
        visit "/"
        click_link "Checking"
        expect(page).to have_content 'DS Checking Account'
        expect(page).to_not have_content "Welcome to United DS!"
    end
end

feature "view /" do
    scenario "user clicks 'savings' button from home screen " do
        visit "/"
        click_link "Savings"
        expect(page).to have_content 'DS Savings Account'
        expect(page).to_not have_content "Welcome to United DS!"

    end
end

# Verify that buttons exist

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
