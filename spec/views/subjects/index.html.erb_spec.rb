require 'rails_helper'
describe 'subjects/index' do 
	it "display all assigned subjects" do 
		assign(:subjects, [
			Subject.new(:name => 'English'),
			Subject.new(:name => 'Hindi'),
			Subject.new(:name => 'Urdu')
		])
		# render
		# expect(rendered).to match(/English/)
		# expect(rendered).to match(/Hindi/)
		# expect(rendered).to match(/Urdu/)
   end
end