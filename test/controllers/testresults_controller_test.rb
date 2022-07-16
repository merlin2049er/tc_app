require "test_helper"

class TestresultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testresult = testresults(:one)
  end

  test "should get index" do
    get testresults_url
    assert_response :success
  end

  test "should get new" do
    get new_testresult_url
    assert_response :success
  end

  test "should create testresult" do
    assert_difference('Testresult.count') do
      post testresults_url, params: { testresult: { case: @testresult.case, comment: @testresult.comment, pass: @testresult.pass, result: @testresult.result, testgroup: @testresult.testgroup } }
    end

    assert_redirected_to testresult_url(Testresult.last)
  end

  test "should show testresult" do
    get testresult_url(@testresult)
    assert_response :success
  end

  test "should get edit" do
    get edit_testresult_url(@testresult)
    assert_response :success
  end

  test "should update testresult" do
    patch testresult_url(@testresult), params: { testresult: { case: @testresult.case, comment: @testresult.comment, pass: @testresult.pass, result: @testresult.result, testgroup: @testresult.testgroup } }
    assert_redirected_to testresult_url(@testresult)
  end

  test "should destroy testresult" do
    assert_difference('Testresult.count', -1) do
      delete testresult_url(@testresult)
    end

    assert_redirected_to testresults_url
  end
end
