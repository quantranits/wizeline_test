class LoginPage
  include PageObject

  DEFAULT_DATA ||= {
      :user_name => 'testuser@example.com',
      :password => 'test123'
  }

  div(:login_form, id: 'login-page')
  text_field(:user_name, name: 'login.username')
  text_field(:password, name: 'login.password')
  button(:submit_login, class: 'button-login', text: 'Login')

  def loaded?
    result_found_bar_element.present?
  end

  def submit_login_info(data={})
    data = DEFAULT_DATA.merge(data)
    self.user_name = data[:user_name]
    self.password = data[:password]
    submit_login
  end

  def has_login_form?
    login_form_element.present? &&
        user_name_element.present? &&
        password_element.present? &&
        submit_login_element.present?
  end
end