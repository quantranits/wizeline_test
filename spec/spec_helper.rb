$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'watir'
require 'rspec'
require 'page-object'
require 'require_all'
require 'pathname'

PROJECT_DIR   ||= File.expand_path(File.dirname(__FILE__) + '../..')

require_all File.dirname(__FILE__) + "/../lib/pages"
require_all File.dirname(__FILE__) + "/../lib/"

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before(:context) do
    @browser ||= Watir::Browser.new get_browser_agent
    at_exit do
      @browser.close
    end
  end

  config.after(:suite) do
    @browser.close unless @browser.nil?
  end

  def get_browser_agent
    if ENV['BROWSER'].nil?
      :chrome
    else
      ENV['BROWSER'].to_sym
    end
  end
end