require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save when all four fields are filled' do
      @category = Category.new({name: 'test category'})
      @product = @category.products.new({
        name: "test flower",
        price: 1000,
        quantity: 5
        })
      @product.save!
      expect(@product)
    end
    it 'should have a name present' do
      @category = Category.new({name: 'test category'})
      @product = @category.products.new({
        name: "test flower",
        price: 1000,
        quantity: 5
        })
      @product.save!
      expect(@product.name).to be_present
    end
    it 'should have a price present' do
      @category = Category.new({name: 'test category'})
      @product = @category.products.new({
        name: "test flower",
        price: 1000,
        quantity: 5
        })
      @product.save!
      expect(@product.price).to be_present
    end
    it 'should have a quantity present' do
      @category = Category.new({name: 'test category'})
      @product = @category.products.new({
        name: "test flower",
        price: 1000,
        quantity: 5
        })
      @product.save!
      expect(@product.quantity).to be_present
    end
    it 'should have a category present' do
      @category = Category.new({name: 'test category'})
      @product = @category.products.new({
        name: "test flower",
        price: 1000,
        quantity: 5
        })
      @product.save!
      expect(@product.category).to be_present
    end
  end
end
