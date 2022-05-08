feature "Enter name" do
  scenario 'submitting name' do
    visit('/')
    expect(page).to have_content 'Hello there!'
    expect(page).to have_content "What's your name?"
    fill_in :user, with: 'Slava'
    expect(page).to have_content "When were you born?"
    expect(page).to have_field type: 'date'
    fill_in "birthday_date", with: "10/12/1986"
    click_button 'Submit'
  end
end
