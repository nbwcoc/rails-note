class NotesController < ApplicationController

  before_action :set_identity

  def index
    @notes = Note.where ["identifier = ?", @ident]
  end

  def create
    @note = Note.new(note_params.merge({:identifier => @ident}))

    @note.save
    redirect_to notes_path
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
  end

  private
  def note_params
    params.require(:note).permit(:title, :text)
  end

  def set_identity
    if cookies[:ident] == nil
      @ident = Base64.urlsafe_encode64 Random::DEFAULT.rand.to_s
      cookies[:ident] = @ident
    end
    @ident = cookies[:ident]
  end
end
