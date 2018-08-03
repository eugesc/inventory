class CategoriesController < ApplicationController
	def index
		@categories = Category.all

		render "categories/index"
	end

	def show
		@category = Category.find(params[:id])

		render "categories/show"
	end

	def delete
		@category = Category.find(params[:id])
		@category.destroy!

		redirect_to "/categories"
	end

	def edit
		@category = Category.find(params[:id])

		render "categories/edit"
	end

	def update
		@category = Category.find(params[:id])

		if @category.update(category_params)
			redirect_to "/categories/#{@category.id}"
		else
			render "categories/edit"
		end
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
