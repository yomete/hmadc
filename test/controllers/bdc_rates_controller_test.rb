require 'test_helper'

class BdcRatesControllerTest < ActionDispatch::IntegrationTest
  test "should get bdcrates" do
    get bdc_rates_bdcrates_url
    assert_response :success
  end

end
