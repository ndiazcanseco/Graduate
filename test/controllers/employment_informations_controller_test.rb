require 'test_helper'

class EmploymentInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment_information = employment_informations(:one)
  end

  test "should get index" do
    get employment_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_information_url
    assert_response :success
  end

  test "should create employment_information" do
    assert_difference('EmploymentInformation.count') do
      post employment_informations_url, params: { employment_information: { ListenTo: @employment_information.ListenTo, Question10: @employment_information.Question10, Question11: @employment_information.Question11, Question12: @employment_information.Question12, Question12O: @employment_information.Question12O, Question13: @employment_information.Question13, Question1: @employment_information.Question1, Question2: @employment_information.Question2, Question2I: @employment_information.Question2I, Question2S: @employment_information.Question2S, Question3: @employment_information.Question3, Question4: @employment_information.Question4, Question5: @employment_information.Question5, Question6: @employment_information.Question6, Question6S: @employment_information.Question6S, Question7: @employment_information.Question7, Question7O: @employment_information.Question7O, Question9: @employment_information.Question9, Read: @employment_information.Read, Speaks: @employment_information.Speaks, Writes: @employment_information.Writes } }
    end

    assert_redirected_to employment_information_url(EmploymentInformation.last)
  end

  test "should show employment_information" do
    get employment_information_url(@employment_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_information_url(@employment_information)
    assert_response :success
  end

  test "should update employment_information" do
    patch employment_information_url(@employment_information), params: { employment_information: { ListenTo: @employment_information.ListenTo, Question10: @employment_information.Question10, Question11: @employment_information.Question11, Question12: @employment_information.Question12, Question12O: @employment_information.Question12O, Question13: @employment_information.Question13, Question1: @employment_information.Question1, Question2: @employment_information.Question2, Question2I: @employment_information.Question2I, Question2S: @employment_information.Question2S, Question3: @employment_information.Question3, Question4: @employment_information.Question4, Question5: @employment_information.Question5, Question6: @employment_information.Question6, Question6S: @employment_information.Question6S, Question7: @employment_information.Question7, Question7O: @employment_information.Question7O, Question9: @employment_information.Question9, Read: @employment_information.Read, Speaks: @employment_information.Speaks, Writes: @employment_information.Writes } }
    assert_redirected_to employment_information_url(@employment_information)
  end

  test "should destroy employment_information" do
    assert_difference('EmploymentInformation.count', -1) do
      delete employment_information_url(@employment_information)
    end

    assert_redirected_to employment_informations_url
  end
end
