class Topic2sController < ApplicationController
    def new
        @topic2 = Topic2.new
    end

    def show
        @topic2 = Topic2.find_by(id: params[:id])
        @topic3 = Topic2.new
    end

    def create
        @topic2 = Topic2.new(topic_params)
        if @topic2.save
            redirect_to topic2_path(@topic2)
        else
            redirect_to :action => "new"
        end
    end

    private

    def topic_params
        params.require(:topic2).permit(:id, :question)
    end
end
