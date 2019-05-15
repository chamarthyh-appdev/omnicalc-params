class CalcController < ApplicationController
    def flex_square
        @a_number = params.fetch("zebra").to_i
        @a_number_sq = @a_number ** 2
        render("flex_templates/square.html.erb")
    end
end 
