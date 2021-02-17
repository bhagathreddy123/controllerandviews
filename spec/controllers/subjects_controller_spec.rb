require 'rails_helper'
describe SubjectsController do 
 let(:subjects) { Subject.all }
 describe 'GET index' do 
 	it "assigns all subjects to @subjects" do 
 		get :index
 		expect(assigns['subjects']).to eq(subjects)
 	end
 end
end