# Wizeline test#

Using Ruby/Watir to implement project

Also build project base on PageObject Pattern

###Project Structure ###
```sh

├── Gemfile                           #all gem that use to implement auto test
├── README.md
├── Rakefile                          # Rake task to run test
├── lib                               #store all page, module
│   └── pages
│       ├── add_new_note_page.rb      # Add new note page
│       ├── home_page.rb              #Home page
│       ├── login_page.rb             #Login page
│       └── my_notes_page.rb          #My notes page
└── spec
    ├── spec_helper.rb                #initialize testing environment before and after test run
    └── test_app
        ├── add_note_spec.rb          #the spec to test add new note
        └── login_spec.rb             #the spec to test login function
```

###Initialize ###
I assume that laptop already has Chrome browser and chromedriver in PATH
```sh
update ruby
pull the project to local machine
cd pulled_project_folder
```

###Install Environment ###
```sh
gem install bundler
bundle install
```

###Run test ###
```sh
rake test_app_wizeline
 ```
 
 can run with other browser by add BROWSER=firefox
 ```sh
 rake test_app_wizeline BROWSER=firefox
  ```
After the test script done, you can check the report by open rspec_results.html with any Browser


