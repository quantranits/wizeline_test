class MyNotesPage
  include PageObject

  div(:note_content, id: 'my-notes-page')
  button(:add_note, class: %w(btn btn-lg btn-primary), text: 'Add note')
  links(:note_items, class: 'list-group-item')

  def loaded?
    note_content_element.present?
  end

  def has_note_info?(note_data)
    wait_until { note_items_elements.any? }
    note_items_elements.any? do |note|
      note.h4.text == note_data[:title] &&
          note_data[:description].include?(note.p.text.delete('...'))
    end
  end
end
