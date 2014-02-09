class NotesController < ApplicationController
  before_action do
    @note = Note.first
  end
  def show
  end

  def edit
  end

  def update
    @note.update_attributes update_params
    redirect_to root_path
  end

  protected
  def update_params
    params.require(:note).permit(:text)
  end
end