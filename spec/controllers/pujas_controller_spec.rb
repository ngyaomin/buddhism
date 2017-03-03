require "./test/test_helper"

describe PujasController do

  describe 'GET #index' do
    get :index
  end
  it { is_expected.to render_with_layout :new}
  it { is_expected.to render_template :index }



end
