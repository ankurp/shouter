class PhotoShoutsController < ApplicationController

  def create
    shout = current_user.build_shout(PhotoShout, photo_shout_parameters)
    if !shout.save
      flash.alert = "Could not shout"
    end
    redirect_to dashboard_path
  end

  private

  def photo_shout_parameters
    params.require(:photo_shout).permit(:image)
  end

end
