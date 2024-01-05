class ApplicationController < ActionController::Base
    before_action :set_random_famous_quote

    def top; end

    private
    
    def set_random_famous_quote
        @random = FamousQuote.order("RANDOM()").limit(1)
    end

end
