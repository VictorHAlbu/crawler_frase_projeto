Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => { 'args' => ['--disable-infobars',
                                      'window-size=1600,1024'] }
    )
  )
end
Capybara.default_selector = :css
