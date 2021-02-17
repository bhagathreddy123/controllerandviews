require 'rails_helper'
describe SubjectsController do 
 let(:subjects) { Subject.all }
 describe 'GET index' do 
 	before(:example) {get :index}
 	it "assigns all subjects to @subjects" do 
 		get :index
 		expect(assigns['subjects']).to eq(subjects)
 	end
 	it "is a success" do 
 		expect(response).to have_http_status(:ok)
 	end
 	it "renders 'index' template" do 
 		expect(response).to render_template('index')
 	end
 end
end