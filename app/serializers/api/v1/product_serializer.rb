module Api
  module V1
    class ProductSerializer < ActiveModel::Serializer

      attributes :serial, :brand, :description, :price, :have_descont, :price_descont, :created_at, :updated_at

      def brand
        self.object.brand.name
      end

      def have_descont
        apply_descont
      end

      def price_descont
        return self.object.price unless apply_descont
        (config_descont * self.price) /100
      end

      private
			def load config_descont
				descont_file = File.read(Rails.root + "./config/settings.yml")
				descont_file = YAML.load(descont_file)
				descont_file["palindrome_descont"].to_int
			end

      def apply_descont
        palindrome = Palindrome.new
				palindrome.valid?(self.object.serial) || palindrome.valid?(self.object.brand.name) || palindrome.valid?(self.object.price.to_s)
      end
    end
  end
end



