require 'spec_helper'

describe "Verify User can add new note successfully" do
  it "User submit valid credentials" do
    visit HomePage
    on(HomePage).login_element.click
    on(LoginPage).submit_login_info
  end

  it 'Should create new note successfully' do
    on(MyNotesPage).add_note_element.click
    note_data = on(AddNewNotePage).create_new_note
    expect(on(MyNotesPage)).to have_note_info note_data
  end
end