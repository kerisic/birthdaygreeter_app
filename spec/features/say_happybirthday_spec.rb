feature 'Say happy birthday to submitted name' do
  scenario 'tells the person happy birthday' do
    visit '/'
    fill_in :name, with: 'Chrissy'
    click_button 'Submit'
    expect(page).to have_content 'Happy birthday Chrissy!'
  end

  scenario "tells the person something else when it's not their birthday yet" do
    visit '/'
    fill_in :name, with: 'Chrissy'
    fill_in :day, with: '23'
    page.select 'December', from: 'Month'
    fill_in :year, with: '1988'
    expect(page).to have_content "Sorry it's not your birthday today..."
  end
end
