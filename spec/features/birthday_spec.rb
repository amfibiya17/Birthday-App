feature "Birthday" do
  scenario 'my birthday is today' do
    visit('/')
    fill_in :user, with: 'Slava'
    fill_in "bday", with: "10/12/1986"
    click_button 'Submit'
    expect(page).to have_content "Happy birthday Slava!"
  end
  
  scenario 'my birthday is in 5 days' do
    visit('/')
    fill_in :user, with: 'Slava'
    fill_in "bday", with: "10/12/1986"
    click_button 'Submit'
    expect(page).to have_content "Your birthday will be in 5 days, Slava."
  end
end