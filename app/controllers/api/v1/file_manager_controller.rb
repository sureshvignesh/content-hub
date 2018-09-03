class Api::V1::FileManagerController < ApplicationController

  def list
    render json: {success: true}
  end

end
