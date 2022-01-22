class ListsController < ApplicationController
   #READ all -----------------------------
    def index
        @lists = List.all
    end

    #READ one -----------------------------
    def show
        @list = List.find(params[:id])
    end

    #CREATE -----------------------------
    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        @list.save

        redirect_to list_path(@list)
    end

    private #------------------------------------------------------

    def list_params
        params.require(:list).permit(:name)
    end

end
