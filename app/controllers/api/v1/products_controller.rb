module Api
	module V1
		class ProductsController < ApiApplicationController
			
			def search
				products = Product.where(serial: "serial")
				render json: products, each_serializer: ProductSerializer
			end
		end
	end
end