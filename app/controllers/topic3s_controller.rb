class Topic3sController < ApplicationController
    def new
        @topic3 = Topic3.new
    end

    def show
        @topic3 = Topic3.find_by(id: params[:id])
    end

    def create
        @topic3 = Topic3.new(topic_params)
        if @topic3.save
            redirect_to topic3_path(@topic3)
        else
            redirect_to :action => "new"
        end
    end

    private

    def topic_params
        params.require(:topic3).permit(:id, :question)
    end
end
