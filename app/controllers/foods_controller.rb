class FoodsController < ApplicationController



    def new 
        @food=Food.new
    end

    def create   
        @food=Food.new(food_params)
        if @food.save 
            redirect_to food_path(@food)
        else
            render 'new'
        end
    end

    private
    def food_params
        params.require(:food).permit(:foodname, :aboutfood)
    end
    

end
