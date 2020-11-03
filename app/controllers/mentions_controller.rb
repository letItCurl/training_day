class MentionsController < ApplicationController
  def indef
    # we can add a search...
    @user = User.all

    respond_to do |format|
      format.json
    end
  end
end