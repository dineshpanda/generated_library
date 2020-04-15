class VisitorEntriesController < ApplicationController
  def index
    @visitor_entries = VisitorEntry.all

    render("visitor_entry_templates/index.html.erb")
  end

  def show
    @visitor_entry = VisitorEntry.find(params.fetch("id_to_display"))

    render("visitor_entry_templates/show.html.erb")
  end

  def new_form
    @visitor_entry = VisitorEntry.new

    render("visitor_entry_templates/new_form.html.erb")
  end

  def create_row
    @visitor_entry = VisitorEntry.new

    @visitor_entry.visit_date = params.fetch("visit_date")
    @visitor_entry.user_id = params.fetch("user_id")
    @visitor_entry.book_id = params.fetch("book_id")

    if @visitor_entry.valid?
      @visitor_entry.save

      redirect_back(:fallback_location => "/visitor_entries", :notice => "Visitor entry created successfully.")
    else
      render("visitor_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_book
    @visitor_entry = VisitorEntry.new

    @visitor_entry.visit_date = params.fetch("visit_date")
    @visitor_entry.user_id = params.fetch("user_id")
    @visitor_entry.book_id = params.fetch("book_id")

    if @visitor_entry.valid?
      @visitor_entry.save

      redirect_to("/books/#{@visitor_entry.book_id}", notice: "VisitorEntry created successfully.")
    else
      render("visitor_entry_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @visitor_entry = VisitorEntry.find(params.fetch("prefill_with_id"))

    render("visitor_entry_templates/edit_form.html.erb")
  end

  def update_row
    @visitor_entry = VisitorEntry.find(params.fetch("id_to_modify"))

    @visitor_entry.visit_date = params.fetch("visit_date")
    
    @visitor_entry.book_id = params.fetch("book_id")

    if @visitor_entry.valid?
      @visitor_entry.save

      redirect_to("/visitor_entries/#{@visitor_entry.id}", :notice => "Visitor entry updated successfully.")
    else
      render("visitor_entry_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @visitor_entry = VisitorEntry.find(params.fetch("id_to_remove"))

    @visitor_entry.destroy

    redirect_to("/users/#{@visitor_entry.user_id}", notice: "VisitorEntry deleted successfully.")
  end

  def destroy_row_from_book
    @visitor_entry = VisitorEntry.find(params.fetch("id_to_remove"))

    @visitor_entry.destroy

    redirect_to("/books/#{@visitor_entry.book_id}", notice: "VisitorEntry deleted successfully.")
  end

  def destroy_row
    @visitor_entry = VisitorEntry.find(params.fetch("id_to_remove"))

    @visitor_entry.destroy

    redirect_to("/visitor_entries", :notice => "Visitor entry deleted successfully.")
  end
end
