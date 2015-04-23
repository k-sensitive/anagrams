require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('result path', {:type => :feature}) do
  it('Checks for anagrams in a list of words, against a specific word') do
    visit('/')
    fill_in('word', :with => 'late')
    fill_in('string', :with => 'cate fate laet')
    click_button('Send')
    expect(page).to have_content('These are the anagrams to late laet')
  end
end
