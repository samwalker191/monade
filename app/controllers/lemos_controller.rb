class LemosController < ApplicationController
    def index
        @lemos = Lemo.all
        render :index
    end

    def new
        @lemo = Lemo.new
        render :new
    end



    private
    def lemo_params
        params.render(:lemo).permit(:price)
    end
end