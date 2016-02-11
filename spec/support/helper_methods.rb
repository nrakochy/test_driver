module HelperMethods
  def login
    visit URL_UNDER_TEST 
    find('#username-id').set(TEST_USERNAME)
    find('#pwd-id').set(TEST_PASSWORD)
    find_field('login').click
  end

  def resolve_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def clear_session 
    page.evaluate_script("parent.ARProcessEvent.Add(0,&quot;LOGOUT&quot;, &quot;COL:CORE:Home_Page;Blank&quot;);")
    Capybara.reset_sessions!
  end


  private

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end
end
