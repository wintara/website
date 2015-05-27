require 'test_helper'

class KaryawansControllerTest < ActionController::TestCase
  setup do
    @karyawan = karyawans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karyawans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karyawan" do
    assert_difference('Karyawan.count') do
      post :create, karyawan: { alamat: @karyawan.alamat, nama: @karyawan.nama, nip: @karyawan.nip }
    end

    assert_redirected_to karyawan_path(assigns(:karyawan))
  end

  test "should show karyawan" do
    get :show, id: @karyawan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karyawan
    assert_response :success
  end

  test "should update karyawan" do
    patch :update, id: @karyawan, karyawan: { alamat: @karyawan.alamat, nama: @karyawan.nama, nip: @karyawan.nip }
    assert_redirected_to karyawan_path(assigns(:karyawan))
  end

  test "should destroy karyawan" do
    assert_difference('Karyawan.count', -1) do
      delete :destroy, id: @karyawan
    end

    assert_redirected_to karyawans_path
  end
end
