require 'test_helper'

class SecondaryTblsControllerTest < ActionController::TestCase
  setup do
    @secondary_tbl = secondary_tbls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secondary_tbls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secondary_tbl" do
    assert_difference('SecondaryTbl.count') do
      post :create, secondary_tbl: { description: @secondary_tbl.description, distance_ends: @secondary_tbl.distance_ends, distance_starts: @secondary_tbl.distance_starts, height: @secondary_tbl.height, masters_id_id: @secondary_tbl.masters_id_id, name: @secondary_tbl.name, width: @secondary_tbl.width }
    end

    assert_redirected_to secondary_tbl_path(assigns(:secondary_tbl))
  end

  test "should show secondary_tbl" do
    get :show, id: @secondary_tbl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secondary_tbl
    assert_response :success
  end

  test "should update secondary_tbl" do
    patch :update, id: @secondary_tbl, secondary_tbl: { description: @secondary_tbl.description, distance_ends: @secondary_tbl.distance_ends, distance_starts: @secondary_tbl.distance_starts, height: @secondary_tbl.height, masters_id_id: @secondary_tbl.masters_id_id, name: @secondary_tbl.name, width: @secondary_tbl.width }
    assert_redirected_to secondary_tbl_path(assigns(:secondary_tbl))
  end

  test "should destroy secondary_tbl" do
    assert_difference('SecondaryTbl.count', -1) do
      delete :destroy, id: @secondary_tbl
    end

    assert_redirected_to secondary_tbls_path
  end
end
