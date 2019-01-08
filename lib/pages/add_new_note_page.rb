class AddNewNotePage
  include PageObject

  DEFAULT_DATA ||= {
      :title => 'My new note',
      :description => (0...100).map { ('a'..'z').to_a[rand(26)] }.join
  }

  button(:add_note, class: %w(btn btn-lg btn-primary), text: 'Add Note')
  text_field(:note_title, name: 'note.title')
  text_area(:note_description, name: 'note.description')

  def create_new_note(data={})
    data = DEFAULT_DATA.merge(data)
    self.note_title = data[:title]
    self.note_description = data[:description]
    add_note
    data
  end
end