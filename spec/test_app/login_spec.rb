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
end