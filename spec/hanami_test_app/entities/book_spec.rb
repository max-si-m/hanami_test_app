require 'spec_helper'

describe Book do
  it 'can be initialised with attributes' do
    book = Book.new(title: 'Refactoring', author: 'Some Author')
    expect(book.title).to eq 'Refactoring'
    expect(book.author).to eq 'Some Author'
  end
end
