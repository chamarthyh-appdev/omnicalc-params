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
    
    def flex_sqrt
        @sqrt_input = params.fetch("sqrt").to_f
        @sqrt_result = @sqrt_input ** (0.5)
        render("flex_templates/square_root.html.erb")
    end
    
    def sqrt_form
        render("form_templates/square_root.html.erb")
    end 
    
    def process_sqrt_form
        @sqrt_input = params.fetch("user_sqrt_input").to_f
        @sqrt_result = @sqrt_input ** (0.5)
        render("results_templates/square_root.html.erb")
    end
    
    def flex_pmt
        @apr_input = params.fetch("apr").to_f/10000/12
        @term_input = params.fetch("term").to_f*12
        @principal_input = params.fetch("principal").to_f
        @monthly_pmt = (@apr_input*@principal_input)/(1-((1+@apr_input) ** (-@term_input)))
        render("flex_templates/payment.html.erb")
    end
    
    def pmt_form
        render("form_templates/payment.html.erb")
    end
    
    def pmt_results
        @apr_input = params.fetch("apr_input").to_f/10000/12
        @term_input = params.fetch("years_input").to_f*12
        @principal_input = params.fetch("principal_input").to_f
        @monthly_pmt = (@apr_input*@principal_input)/(1-((1+@apr_input) ** (-@term_input)))
        render("results_templates/payment.html.erb")
    end
    
    def random
        @min_input = params.fetch("min").to_i
        @max_input = params.fetch("max").to_i
        @rand_output = rand(@min_input..@max_input)
        render("flex_templates/random.html.erb")
    end 
    
    def random_form
        render("form_templates/random.html.erb")
    end
    
    def random_results
        @min_input = params.fetch("min_input").to_f
        @max_input = params.fetch("max_input").to_f
        @rand_output = rand(@min_input..@max_input)
        render("results_templates/random.html.erb")
    end 
end 
