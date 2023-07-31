require "test_helper"

class LikisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liki = likis(:one)
  end

  test "should get index" do
    get likis_url
    assert_response :success
  end

  test "should get new" do
    get new_liki_url
    assert_response :success
  end

  test "should create liki" do
    assert_difference("Liki.count") do
      post likis_url, params: { liki: { body: @liki.body, title: @liki.title } }
    end

    assert_redirected_to liki_url(Liki.last)
  end

  test "should show liki" do
    get liki_url(@liki)
    assert_response :success
  end

  test "should get edit" do
    get edit_liki_url(@liki)
    assert_response :success
  end

  test "should update liki" do
    patch liki_url(@liki), params: { liki: { body: @liki.body, title: @liki.title } }
    assert_redirected_to liki_url(@liki)
  end

  test "should destroy liki" do
    assert_difference("Liki.count", -1) do
      delete liki_url(@liki)
    end

    assert_redirected_to likis_url
  end
end
