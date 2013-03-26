require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { aktif: @customer.aktif, alamat: @customer.alamat, daerah: @customer.daerah, nama: @customer.nama, negeri: @customer.negeri, no_kp: @customer.no_kp, penyakit: @customer.penyakit, poskod: @customer.poskod, tarikh_mula: @customer.tarikh_mula, umur: @customer.umur }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    put :update, id: @customer, customer: { aktif: @customer.aktif, alamat: @customer.alamat, daerah: @customer.daerah, nama: @customer.nama, negeri: @customer.negeri, no_kp: @customer.no_kp, penyakit: @customer.penyakit, poskod: @customer.poskod, tarikh_mula: @customer.tarikh_mula, umur: @customer.umur }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
