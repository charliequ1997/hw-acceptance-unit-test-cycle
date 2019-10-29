require 'rails_helper'
describe MoviesController do
  describe 'Get new' do
    let!(:movie) {Movie.new}

    it 'should render template: new' do
      get :new
      expect(response).to render_template('new')
    end
  end
end
