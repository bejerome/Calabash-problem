Given(/^(.*) and (.*) are visible$/) do  |id_1, id_2|
   @current_page = page(Select_Value_Screen).Isvisible(id_1)
   @current_page = page(Select_Value_Screen).Isvisible(id_2)
end

Then(/^I set (.*) value to (.*)$/) do |id, value |
  @current_page = page(Select_Value_Screen).select_picker_value(id, value)
end

And(/^I set (.*) value to (.*)$/) do |id, value |
  @current_page = page(Select_Value_Screen).select_picker_value(id, value)
end


