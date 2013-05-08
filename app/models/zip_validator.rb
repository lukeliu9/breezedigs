class ZipValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		record.errors[attribute] << (
			options[:message] || "is not a valid zip code"
		) unless 
			value =~ /^\d{5}([\-]?\d{4})?$/
	end
end	
