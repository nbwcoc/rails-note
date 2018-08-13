class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(params.require(:note).permit(:title, :text))

    @note.save
    redirect_to @note
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end
end
