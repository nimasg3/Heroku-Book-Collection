# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid Title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 100
	select '2018', :from => 'book_published_date_1i'
	select 'September', :from => 'book_published_date_2i'
	select '14', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  
  scenario 'valid Author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 100
	select '2018', :from => 'book_published_date_1i'
	select 'September', :from => 'book_published_date_2i'
	select '14', :from => 'book_published_date_3i'
	click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K. Rowling')
  end

   scenario 'valid Price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 100
	select '2018', :from => 'book_published_date_1i'
	select 'September', :from => 'book_published_date_2i'
	select '14', :from => 'book_published_date_3i'
	click_on 'Create Book'
    visit books_path
    expect(page).to have_content(100)
  end
   scenario 'valid Date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 100
	select '2018', :from => 'book_published_date_1i'
	select 'September', :from => 'book_published_date_2i'
	select '14', :from => 'book_published_date_3i'
	click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2018-09-14')
  end
end