require 'features_helper'

feature 'List books' do
  # TODO it should be fixtures
  before do
    BookRepository.clear

    BookRepository.create(Book.new(title: 'PoEAA', author: 'Martin Fowler'))
    BookRepository.create(Book.new(title: 'TDD', author: 'Kent Beck'))
  end

  scenario 'displays each book on the page' do
    visit '/books'

    within '#books' do
      expect(page).to have_css('.book', count: 2)
    end
  end
end
