require "test_helper"

class TestgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testgroup = testgroups(:one)
  end

  test "should get index" do
    get testgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_testgroup_url
    assert_response :success
  end

  test "should create testgroup" do
    assert_difference('Testgroup.count') do
      post testgroups_url, params: { testgroup: { description: @testgroup.description, testcase: @testgroup.testcase, title: @testgroup.title } }
    end

    assert_redirected_to testgroup_url(Testgroup.last)
  end

  test "should show testgroup" do
    get testgroup_url(@testgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_testgroup_url(@testgroup)
    assert_response :success
  end

  test "should update testgroup" do
    patch testgroup_url(@testgroup), params: { testgroup: { description: @testgroup.description, testcase: @testgroup.testcase, title: @testgroup.title } }
    assert_redirected_to testgroup_url(@testgroup)
  end

  test "should destroy testgroup" do
    assert_difference('Testgroup.count', -1) do
      delete testgroup_url(@testgroup)
    end

    assert_redirected_to testgroups_url
  end
end
