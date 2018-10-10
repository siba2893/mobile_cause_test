class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :create_errors

  def create
    @note = Note.new(strong_params)
    @note.user = current_user
    unless @note.save
      @errors += @note.errors.full_messages
    end
  end

  def edit
    @note = Note.find_by(id: params[:id])
  end

  def update
    @note = Note.find_by(id: params[:id])
    if user_allowed_to_modify_note?
      unless @note.update(strong_params)
        @errors += @note.errors.full_messages
      end
    else
      @errors += ['This note is not yours, so you cannot modify it.']
    end
  end

  def destroy
    @note = Note.find_by(id: params[:id])
    if @note
      if user_allowed_to_modify_note?
        @note.destroy
      else
        @errors += ['This note is not yours, so you cannot destroy it.']
      end
    end
  end

  private

  def user_allowed_to_modify_note?
    @note.user == current_user
  end

  def create_errors
    @errors = []
  end

  def strong_params
    params.require(:note).permit(:title, :content)
  end
end
