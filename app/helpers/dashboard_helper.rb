module DashboardHelper
	def grid_colors(row, column)
		palette = @palettes.select{|palette| palette.row==row && palette.column==column}.last
		palette.nil? ? '' : "style='background-color: #{palette.color_code};' title='#{palette.user.username}-#{l(palette.user.created_at)}' "
	end
end
