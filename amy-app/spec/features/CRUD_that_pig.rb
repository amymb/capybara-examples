require 'rails-helper'

feature 'user can crud pig poetry' do
  scenario 'Homepage is awesome' do
    visit root_path

    expect(page).to have_selector('h1', text: "Pigs 4 Ever")

    expect(page).to have_text("You'll be just like a pig in heaven when you read these wonderful poems done by those that LOVE pigs. If you would like to contribute some poetry, we would LOVE to add it to our collection")

  scenario 'User can add pig poem' do
    visit root_path
    click_on "Add Pig Poem"
    fill_in "Title"
