module ApplicationHelper
	def error_messages_for(object)
	  render partial: "application/error_messages", locals: {object: object}
	end

	def inch_to_centimeters(inches)
		inches * 2.54
	end

	def next_page
		(@page || 0) + 1
	end
end
