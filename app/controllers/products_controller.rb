class ProductsController < ApplicationController
    
    def index
        products = Product.all
        render json: products , status: 200
    end

    def show
        product = Product.find(params[:id])
        render json: product, status: 200
    end

    def create
        content_manager = ContentManager.find(params[:content_manager_id])
        product = content_manager.products.new(params_product)

        if product.save 
            render json: product, status: 201
        else
            render json: product.errors, status: :unprocessable_entity
        end
    end

    def destroy
        content_manager = ContentManager.find(params[:content_manager_id])
        product = content_manager.products.find(params[:id])

        if product.destroy
            render json: product, status: 200
        else 
            render json: product.errors, status: :unprocessable_entity
        end
    end

    def update
        content_manager = ContentManager.find(params[:content_manager_id])
        product = content_manager.products.find(params[:id])
        
        if product.update(params_product)
            render json: product, status: 200
        else
            render json: product.errors, status: 422
        end

    end

    def params_product
        params.permit(:sku, :name, :category, :price, :brand, :stock,
             :meassure_type, :weight, :description, :content_manager_id)
    end
end
