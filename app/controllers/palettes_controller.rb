class PalettesController < ApplicationController
  before_action :set_palettes, only: [:index, :refresh_grid]

  def create
  	@current_user.update(palette_params)
  end

  def refresh_grid
  	respond_to :js
  end

  private
  	def palette_params
  		params.permit(palettes_attributes:[:color_code, :row, :column])
  	end

  	def set_palettes
  		@palettes = Palette.eager_load(:user).all
  	end
end
