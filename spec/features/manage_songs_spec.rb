require 'rails_helper'
#
feature 'Manage songs', js: true do

  scenario 'add a new song' do
    visit artist_path

    fill_in 'song_name', with: 'hello'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Hello')
  end

end
