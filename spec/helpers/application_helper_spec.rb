require 'rails_helper'
describe ApplicationHelper do 
	describe '#inch_to_centimeters' do 
		it "converts inches to centimeters" do 
			expect(helper.inch_to_centimeters(2)).to eq(5.08)
		end
	end
	describe '#next_page' do 
		it "returns @page + 1" do 
			assign(:page, 3)
			expect(helper.next_page).to eq(4)
		end
	end
end