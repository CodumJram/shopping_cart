class ProductsController < ApplicationController
    
    def index
        @products = Product.all
        render json: @products , status: 200
    end

    def show
        @product = Product.find(params[:id])
        render json: @product, status: 200
    end

    def create
        @content_manager = ContentManager.find(params[:content_manager_id])
        @product = @content_manager.products.new(params_product)
        
        product_save = @product.save
        action_validation(product_save, @product, created_status)
    end

    def destroy
        @content_manager = ContentManager.find(params[:content_manager_id])
        @product = @content_manager.products.find(params[:id])
        
        product_destroy = @product.destroy
        action_validation(product_destroy, @product, ok_status)
    end

    def update
        @content_manager = ContentManager.find(params[:content_manager_id])
        @product = @content_manager.products.find(params[:id])
        
        product_update = @product.update(params_product)
        action_validation(product_update, @product, ok_status)
    end

    private
    def params_product
        params.require(:product).permit(:sku, :name, :category, :price,
                        :brand, :stock, :meassure_type, :weight, :description)
    end
end
