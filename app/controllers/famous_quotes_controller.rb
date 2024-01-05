class FamousQuotesController < ApplicationController
    def top
      @random = FamousQuote.order("RANDOM()").limit(1)
    end

    def new

    end

    def show
      @random = FamousQuote.order("RANDOM()").limit(1)
    end

    def index
      @random = FamousQuote.order("RANDOM()").limit(1)
    end

end
