require "test_helper"

class Public::CusutomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cusutomers_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cusutomers_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_cusutomers_edit_url
    assert_response :success
  end
end
