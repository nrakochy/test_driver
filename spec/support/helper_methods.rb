module HelperMethods
  def login
    visit LOGIN_PATH
    fill_in(username, with: TEST_USERNAME)
    fill_in(password, with: TEST_PASSWORD)
    click_button("Login")
    resolve_ajax
  end

  def resolve_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end


  private

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end
end
