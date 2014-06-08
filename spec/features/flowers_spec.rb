require 'spec_helper'

feature 'Manage Flowers' do
  scenario 'User can create and view list of flowers' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Flower'
    fill_in 'Flower name', with: 'rose'
    fill_in 'Color', with: 'red'
    click_on 'Create Flower'
    expect(page).to have_content 'rose'
    expect(page).to have_content 'red'
  end
end