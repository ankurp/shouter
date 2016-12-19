class TextShoutsController < ApplicationController

  def create
    shout = current_user.build_shout(TextShout, text_shout_parameters)
    if !shout.save
      flash.alert = "Could not shout"
    end
    redirect_to dashboard_path
  end

  private

  def text_shout_parameters
    params.require(:text_shout).permit(:body)
  end

end
