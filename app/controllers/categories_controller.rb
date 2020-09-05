class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end
    
    def new
        @category = Category.new
    end
    
    def create
        @category = category.create(category_params)
        redirect_to category_path(category)
    end

    def show
        @category = Category.find(params[:id])
    end

    private
    def category_params
        params.require(:category).permit(:name, :category_id)
    end

end
