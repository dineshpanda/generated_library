class BooksController < ApplicationController
  def index
    @books = Book.all

    render("book_templates/index.html.erb")
  end

  def show
    @book = Book.find(params.fetch("id_to_display"))

    render("book_templates/show.html.erb")
  end

  def new_form
    @book = Book.new

    render("book_templates/new_form.html.erb")
  end

  def create_row
    @book = Book.new

    @book.name = params.fetch("name")
    @book.author_id = params.fetch("author_id")
    @book.publish_date = params.fetch("publish_date")

    if @book.valid?
      @book.save

      redirect_back(:fallback_location => "/books", :notice => "Book created successfully.")
    else
      render("book_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @book = Book.find(params.fetch("prefill_with_id"))

    render("book_templates/edit_form.html.erb")
  end

  def update_row
    @book = Book.find(params.fetch("id_to_modify"))

    @book.name = params.fetch("name")
    @book.author_id = params.fetch("author_id")
    @book.publish_date = params.fetch("publish_date")

    if @book.valid?
      @book.save

      redirect_to("/books/#{@book.id}", :notice => "Book updated successfully.")
    else
      render("book_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_author
    @book = Book.find(params.fetch("id_to_remove"))

    @book.destroy

    redirect_to("/users/#{@book.author_id}", notice: "Book deleted successfully.")
  end

  def destroy_row
    @book = Book.find(params.fetch("id_to_remove"))

    @book.destroy

    redirect_to("/books", :notice => "Book deleted successfully.")
  end
end
