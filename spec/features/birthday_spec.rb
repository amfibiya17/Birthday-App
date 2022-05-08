feature "Birthday" do
  scenario 'my birthday is today' do
    Timecop.freeze(Time.parse('08/05/2022')) do
      visit('/')
      fill_in :name, with: 'Slava'
      fill_in "birthday_date", with: "08/05/1986"
      click_button 'Submit'
      expect(page).to have_content "Happy birthday Slava!"
    end
  end
  
  scenario 'my birthday is in 216 days' do
    Timecop.freeze(Time.parse('08/05/2022')) do
      visit('/')
      fill_in :name, with: 'Slava'
      fill_in "birthday_date", with: "10/12/1986"
      click_button 'Submit'
      expect(page).to have_content "Your birthday will be in 216 days, Slava."
    end
  end

  scenario 'i put wrong date' do
    visit('/')
    fill_in :name, with: 'Slava'
    fill_in "birthday_date", with: "10/12/2986"
    click_button 'Submit'
    expect(page).to have_content "Wow! You haven't been born yet!"
  end
end
