require 'calabash-cucumber/ibase'

class Select_Value_Screen < Calabash::IBase

	def  Isvisible(id_string)
		wait_for_element_exists("label marked:'#{id_string}'")
	end

	def select_picker_value(picker_id, value)
		wait_for_element_exists("UIPickerView id:'#{picker_id}'")
		if picker_id.eql? 'picker_1'
		    q = query("label text:'#{value}'")
		    while q.empty?
		        scroll("UIPickerView id:'#{picker_id}'",:up)
		        sleep(1)
		        q = query("* text:'#{value}'")
		    end
		    #select text from picker
		    touch("* text:'#{value}'")
		    # click set button
		    touch("* marked:'set_btn'")	
		    sleep(1)
		    wait_for_element_exists("label marked:'number_input")
		    input_string = query("EditText id:'number_input'",:getText)
		    input_string.should eq  value

		else
			uia(%Q[uia.selectPickerValues('{1  "#{value}"}')])
			# click set button
		    touch("* marked:'set_btn'")	
		    sleep(1)
		    wait_for_element_exists("label marked:'number_input")
		    input_string = query("EditText id:'number_input'",:getText)
		    input_string.should eq  value
		end

	end
end