class NotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @errors = []
    @note = Note.new(strong_params)
    unless @note.save
      @errors += @note.errors.full_messages
    end
  end

  def edit
    @note = Note.find_by(id: params[:id])
  end

  def update
    @note = Note.find_by(id: params[:id])
    unless @note.update(strong_params)
      @errors += @note.errors.full_messages
    end
  end

  def destroy
    note = Note.find_by(id: params[:id])
    @removed = note.id
    note.destroy if note
  end

  private

  def strong_params
    params.require(:note).permit(:title, :content)
  end
end
