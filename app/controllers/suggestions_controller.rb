class SuggestionsController < ApplicationController
  expose :suggestion

  def create
    if suggestion.save
      flash[:notice] = "Thank you for suggesting a comic!"
      redirect_to comics_path
    else
      flash[:alert] = "There was a problem submitting your suggestion"
      redirect_to new_suggestion_path
    end
  end
end
