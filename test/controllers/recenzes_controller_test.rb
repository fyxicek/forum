require "test_helper"

class RecenzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recenze = recenzes(:one)
  end

  test "should get index" do
    get recenzes_url
    assert_response :success
  end

  test "should get new" do
    get new_recenze_url
    assert_response :success
  end

  test "should create recenze" do
    assert_difference("Recenze.count") do
      post recenzes_url, params: { recenze: { description: @recenze.description, hodnoceni: @recenze.hodnoceni, name: @recenze.name } }
    end

    assert_redirected_to recenze_url(Recenze.last)
  end

  test "should show recenze" do
    get recenze_url(@recenze)
    assert_response :success
  end

  test "should get edit" do
    get edit_recenze_url(@recenze)
    assert_response :success
  end

  test "should update recenze" do
    patch recenze_url(@recenze), params: { recenze: { description: @recenze.description, hodnoceni: @recenze.hodnoceni, name: @recenze.name } }
    assert_redirected_to recenze_url(@recenze)
  end

  test "should destroy recenze" do
    assert_difference("Recenze.count", -1) do
      delete recenze_url(@recenze)
    end

    assert_redirected_to recenzes_url
  end
end
