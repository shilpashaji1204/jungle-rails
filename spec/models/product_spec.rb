require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before(:each) do
    @category = Category.create(name: 'test')
    @product = Product.new(name: 'Test product', price: 100, quantity: 10, category: @category)
    end

    it 'should save when all four fields are set' do
      expect(@product.save).to be true
    end
    
    it 'should not save without a name' do
      @product.name = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
    
    it 'should not save without a price' do
      @product.price_cents = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Price cents is not a number", "Price is not a number", "Price can't be blank")
    end
    
    it 'should not save without a quantity' do
      @product.quantity = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
    
    it 'should not save without a category' do
      @product.category = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end 
end 
    