require 'test_helper'

class LearningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning = learnings(:one)
  end

  test "should get index" do
    get learnings_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_url
    assert_response :success
  end

  test "should create learning" do
    assert_difference('Learning.count') do
      post learnings_url, params: { learning: { Experience: @learning.Experience, Infrastructure: @learning.Infrastructure, Investigation: @learning.Investigation, Projects: @learning.Projects, Quality: @learning.Quality, Studies: @learning.Studies } }
    end

    assert_redirected_to learning_url(Learning.last)
  end

  test "should show learning" do
    get learning_url(@learning)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_url(@learning)
    assert_response :success
  end

  test "should update learning" do
    patch learning_url(@learning), params: { learning: { Experience: @learning.Experience, Infrastructure: @learning.Infrastructure, Investigation: @learning.Investigation, Projects: @learning.Projects, Quality: @learning.Quality, Studies: @learning.Studies } }
    assert_redirected_to learning_url(@learning)
  end

  test "should destroy learning" do
    assert_difference('Learning.count', -1) do
      delete learning_url(@learning)
    end

    assert_redirected_to learnings_url
  end
end
