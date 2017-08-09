require 'calabash-android/abase'

class Select_Value_Screen < Calabash::ABase

	def  Isvisible(id)
		validate element id is visible

	end

	def select_picker_value(picker_id, value)
	.  Check that picker exists
	.  if picker id is picker_1
	.  set value to index 0 of picker
	.  else  set value to index 1 of picker
	.  click on the Set button
	.  after picker disappears, get text value from field
	.  add a decimal value to text
	.  compare both values

	end
end