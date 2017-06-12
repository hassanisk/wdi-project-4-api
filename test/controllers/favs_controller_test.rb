require 'test_helper'

class FavsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fav = favs(:one)
  end

  test "should get index" do
    get favs_url, as: :json
    assert_response :success
  end

  test "should create fav" do
    assert_difference('Fav.count') do
      post favs_url, params: { fav: { bodypart: @fav.bodypart, desc: @fav.desc, difficulty: @fav.difficulty, image: @fav.image, level: @fav.level, muscelsname: @fav.muscelsname, name: @fav.name, rep: @fav.rep, user_id: @fav.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show fav" do
    get fav_url(@fav), as: :json
    assert_response :success
  end

  test "should update fav" do
    patch fav_url(@fav), params: { fav: { bodypart: @fav.bodypart, desc: @fav.desc, difficulty: @fav.difficulty, image: @fav.image, level: @fav.level, muscelsname: @fav.muscelsname, name: @fav.name, rep: @fav.rep, user_id: @fav.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy fav" do
    assert_difference('Fav.count', -1) do
      delete fav_url(@fav), as: :json
    end

    assert_response 204
  end
end
