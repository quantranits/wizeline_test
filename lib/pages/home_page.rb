class HomePage
  include PageObject

  page_url 'http://testapp.galenframework.com/'


  button(:login, class: 'button-login', text: 'Login')

end