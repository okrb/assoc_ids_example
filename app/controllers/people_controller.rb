class PeopleController < ApplicationController
  def edit
    @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to edit_person_path(@person), notice: "Saved!"
    else
      render :edit
    end
  end

end
