require "test_helper"

class TeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tee = tees(:one)
  end

  test "should get index" do
    get tees_url
    assert_response :success
  end

  test "should get new" do
    get new_tee_url
    assert_response :success
  end

  test "should create tee" do
    assert_difference('Tee.count') do
      post tees_url, params: { tee: { course_id: @tee.course_id, hole_1: @tee.hole_1, hole_10: @tee.hole_10, hole_11: @tee.hole_11, hole_12: @tee.hole_12, hole_13: @tee.hole_13, hole_14: @tee.hole_14, hole_15: @tee.hole_15, hole_16: @tee.hole_16, hole_17: @tee.hole_17, hole_18: @tee.hole_18, hole_2: @tee.hole_2, hole_3: @tee.hole_3, hole_4: @tee.hole_4, hole_5: @tee.hole_5, hole_6: @tee.hole_6, hole_7: @tee.hole_7, hole_8: @tee.hole_8, hole_9: @tee.hole_9, in: @tee.in, name: @tee.name, out: @tee.out, tot: @tee.tot } }
    end

    assert_redirected_to tee_url(Tee.last)
  end

  test "should show tee" do
    get tee_url(@tee)
    assert_response :success
  end

  test "should get edit" do
    get edit_tee_url(@tee)
    assert_response :success
  end

  test "should update tee" do
    patch tee_url(@tee), params: { tee: { course_id: @tee.course_id, hole_1: @tee.hole_1, hole_10: @tee.hole_10, hole_11: @tee.hole_11, hole_12: @tee.hole_12, hole_13: @tee.hole_13, hole_14: @tee.hole_14, hole_15: @tee.hole_15, hole_16: @tee.hole_16, hole_17: @tee.hole_17, hole_18: @tee.hole_18, hole_2: @tee.hole_2, hole_3: @tee.hole_3, hole_4: @tee.hole_4, hole_5: @tee.hole_5, hole_6: @tee.hole_6, hole_7: @tee.hole_7, hole_8: @tee.hole_8, hole_9: @tee.hole_9, in: @tee.in, name: @tee.name, out: @tee.out, tot: @tee.tot } }
    assert_redirected_to tee_url(@tee)
  end

  test "should destroy tee" do
    assert_difference('Tee.count', -1) do
      delete tee_url(@tee)
    end

    assert_redirected_to tees_url
  end
end
