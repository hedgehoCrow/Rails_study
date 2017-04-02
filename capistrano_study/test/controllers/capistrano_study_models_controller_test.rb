require 'test_helper'

class CapistranoStudyModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capistrano_study_model = capistrano_study_models(:one)
  end

  test "should get index" do
    get capistrano_study_models_url
    assert_response :success
  end

  test "should get new" do
    get new_capistrano_study_model_url
    assert_response :success
  end

  test "should create capistrano_study_model" do
    assert_difference('CapistranoStudyModel.count') do
      post capistrano_study_models_url, params: { capistrano_study_model: { field1: @capistrano_study_model.field1, field2: @capistrano_study_model.field2, field3: @capistrano_study_model.field3, field4: @capistrano_study_model.field4 } }
    end

    assert_redirected_to capistrano_study_model_url(CapistranoStudyModel.last)
  end

  test "should show capistrano_study_model" do
    get capistrano_study_model_url(@capistrano_study_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_capistrano_study_model_url(@capistrano_study_model)
    assert_response :success
  end

  test "should update capistrano_study_model" do
    patch capistrano_study_model_url(@capistrano_study_model), params: { capistrano_study_model: { field1: @capistrano_study_model.field1, field2: @capistrano_study_model.field2, field3: @capistrano_study_model.field3, field4: @capistrano_study_model.field4 } }
    assert_redirected_to capistrano_study_model_url(@capistrano_study_model)
  end

  test "should destroy capistrano_study_model" do
    assert_difference('CapistranoStudyModel.count', -1) do
      delete capistrano_study_model_url(@capistrano_study_model)
    end

    assert_redirected_to capistrano_study_models_url
  end
end
