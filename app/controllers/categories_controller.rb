class CategoriesController < ApplicationController
	def index
		@categories = Category.all

		render "categories/index"
	end

	def show
		@category = Category.find(params[:id])

		render "categories/show"
	end

	def new
		@category = Category.new

		render "categories/new"
	end

	def create
		@category = Category.new(category_params)

		if @category.save
			# 302
			redirect_to "/categories"
		else
			# 200
			render "categories/new"
		end
	end

	def category_params
		params.require(:category).permit!
	end
end
