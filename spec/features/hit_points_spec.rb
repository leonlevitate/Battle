feature 'Hit Points' do
  scenario 'Player 1 can see Player 2\'s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Chris'
    fill_in :player_2_name, with: 'Leon'
    click_button 'Submit'
  expect(page).to have_content 'Leon - 100HP'
  end
end
