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

  scenario 'User can edit and update list of flowers' do
    visit '/'
    click_on 'Add Flower'
    fill_in 'Flower name', with: 'rose'
    fill_in 'Color', with: 'red'
    click_on 'Create Flower'
    expect(page).to have_content 'rose'
    expect(page).to have_content 'red'
    click_on 'rose'
    expect(page).to have_content 'rose'
    expect(page).to have_content 'red'
    click_on 'Edit Flower'
    fill_in 'Flower name', with: 'peony'
    fill_in 'Color', with: 'pink'
    click_on 'Update Flower'
    expect(page).to have_content 'peony'
    expect(page).to have_content 'pink'
    expect(page).to have_no_content 'rose'
    expect(page).to have_no_content 'red'
  end
end