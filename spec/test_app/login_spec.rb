require 'spec_helper'

describe "Verify User can login successfully" do
  it "Login form should be shown properly" do
    visit HomePage
    on(HomePage).login_element.click
    expect(on(LoginPage)).to have_login_form
  end

  it 'Should be login successfully' do
    on(LoginPage).submit_login_info
    expect(on(MyNotesPage).loaded?).to be true
  end

  it 'Should create new note successfully' do
    on(MyNotesPage).add_note_element.click
    note_data = on(AddNewNotePage).create_new_note
    expect(on(MyNotesPage)).to have_note_info note_data
  end
end