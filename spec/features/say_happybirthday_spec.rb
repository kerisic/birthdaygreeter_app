require 'Date'

feature 'Say happy birthday to submitted name' do
  scenario 'tells the person happy birthday' do
    visit '/'
    fill_in :name, with: 'Chrissy'
    fill_in :day, with: Date.today.strftime('%d').to_s
    page.select Date.today.strftime('%B').to_s, from: 'Month'
    fill_in :year, with: '1988'
    click_button 'Submit'
    expect(page).to have_content 'Happy birthday Chrissy!'
  end

  scenario "tells the person something else when it's not their birthday yet" do
    visit '/'
    fill_in :name, with: 'Chrissy'
    fill_in :day, with: (Date.today.strftime('%d').to_i + 1).to_s
    page.select 'December', from: 'Month'
    fill_in :year, with: '1988'
    click_button 'Submit'
    expect(page).to have_content "Sorry it's not your birthday today..."
  end
end
