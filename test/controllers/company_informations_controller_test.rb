require 'test_helper'

class CompanyInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_information = company_informations(:one)
  end

  test "should get index" do
    get company_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_company_information_url
    assert_response :success
  end

  test "should create company_information" do
    assert_difference('CompanyInformation.count') do
      post company_informations_url, params: { company_information: { Address: @company_information.Address, Area: @company_information.Area, AreaPostgraduate: @company_information.AreaPostgraduate, Boss: @company_information.Boss, BusinessActivity: @company_information.BusinessActivity, CellPhone: @company_information.CellPhone, City: @company_information.City, Committee: @company_information.Committee, Cp: @company_information.Cp, Email: @company_information.Email, LevelStudy: @company_information.LevelStudy, Phone: @company_information.Phone, Postgraduate: @company_information.Postgraduate, PrimarySector: @company_information.PrimarySector, ReasonPartner: @company_information.ReasonPartner, Recommendation: @company_information.Recommendation, SecondarySector: @company_information.SecondarySector, Sector: @company_information.Sector, SocialOrganizations: @company_information.SocialOrganizations, State: @company_information.State, ThirdSector: @company_information.ThirdSector, Unity: @company_information.Unity, UpdateCourses: @company_information.UpdateCourses, Website: @company_information.Website, Which: @company_information.Which } }
    end

    assert_redirected_to company_information_url(CompanyInformation.last)
  end

  test "should show company_information" do
    get company_information_url(@company_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_information_url(@company_information)
    assert_response :success
  end

  test "should update company_information" do
    patch company_information_url(@company_information), params: { company_information: { Address: @company_information.Address, Area: @company_information.Area, AreaPostgraduate: @company_information.AreaPostgraduate, Boss: @company_information.Boss, BusinessActivity: @company_information.BusinessActivity, CellPhone: @company_information.CellPhone, City: @company_information.City, Committee: @company_information.Committee, Cp: @company_information.Cp, Email: @company_information.Email, LevelStudy: @company_information.LevelStudy, Phone: @company_information.Phone, Postgraduate: @company_information.Postgraduate, PrimarySector: @company_information.PrimarySector, ReasonPartner: @company_information.ReasonPartner, Recommendation: @company_information.Recommendation, SecondarySector: @company_information.SecondarySector, Sector: @company_information.Sector, SocialOrganizations: @company_information.SocialOrganizations, State: @company_information.State, ThirdSector: @company_information.ThirdSector, Unity: @company_information.Unity, UpdateCourses: @company_information.UpdateCourses, Website: @company_information.Website, Which: @company_information.Which } }
    assert_redirected_to company_information_url(@company_information)
  end

  test "should destroy company_information" do
    assert_difference('CompanyInformation.count', -1) do
      delete company_information_url(@company_information)
    end

    assert_redirected_to company_informations_url
  end
end
