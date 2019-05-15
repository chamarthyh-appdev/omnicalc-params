class CalcController < ApplicationController
    def flex_square
        @a_number = params.fetch("zebra").to_i
        @a_number_sq = @a_number ** 2
        render("flex_templates/square.html.erb")
    end
    
    def square_form
        render("form_templates/square.html.erb")
    end 
    
    def process_square_form
        @a_number = params.fetch("user_number").to_f
        @a_number_sq = @a_number ** 2
        render("results_templates/square.html.erb")
    end
end 
