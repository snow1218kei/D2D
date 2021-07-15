class RelationshipsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    current_user.purchase(product)
    flash[:success] = '商品を購入しました。'
  end

  def destroy
  end
end
