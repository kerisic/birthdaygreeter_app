feature 'countsdown until next birthday' do
  scenario 'when birthday is not today, counts how many days until next' do
    visit '/'
    fill_in :name, with: 'Chrissy'
    fill_in :day, with: (Date.today.strftime('%d').to_i + 1).to_s
    page.select 'December', from: 'Month'
    fill_in :year, with: '1988'
    click_button 'Submit'
    expect(page).to have_content "days to go until your next birthday!"
  end
end
