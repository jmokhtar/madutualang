require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, agent: { aktif: @agent.aktif, alamat: @agent.alamat, daerah: @agent.daerah, nama: @agent.nama, negeri: @agent.negeri, no_kp: @agent.no_kp, pengurus: @agent.pengurus, tarikh_mula: @agent.tarikh_mula, umur: @agent.umur }
    end

    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should show agent" do
    get :show, id: @agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent
    assert_response :success
  end

  test "should update agent" do
    put :update, id: @agent, agent: { aktif: @agent.aktif, alamat: @agent.alamat, daerah: @agent.daerah, nama: @agent.nama, negeri: @agent.negeri, no_kp: @agent.no_kp, pengurus: @agent.pengurus, tarikh_mula: @agent.tarikh_mula, umur: @agent.umur }
    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, id: @agent
    end

    assert_redirected_to agents_path
  end
end
