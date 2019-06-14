feature 'Enter names' do
  scenario 'Players can fill in their names' do
    visit('/')
    fill_in :player_1_name, with: 'Leon'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Leon vs. Chris'
  end
end
