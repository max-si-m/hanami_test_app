require 'features_helper'

feature 'Visit home' do
  scenario 'is successful' do
    visit '/'

    expect(page).to have_content('Bookshelf')
  end
end
