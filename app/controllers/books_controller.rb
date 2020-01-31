class BooksController < ApplicationController


    def new
        @book=Book.new
    end

    def create   
        @book=Book.new(book_params)
        if @book.save 
            flash[:notic]='Book was created succsessfully!'
            redirect_to book_path(@book)
        else
            render 'new'
        end
    end

    def show  
        @book=Book.find(params[:id])
    end

    private
    def book_params  
        params.require(:book).permit(:name , :about)
    end
end