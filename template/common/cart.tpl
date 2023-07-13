<li>
	<button data-toggle="modal" data-target="#cart" id="btn-cart">
		<span class="hidden-sm hidden-xs">Корзина</span>
		<svg class="svg-header" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M10.62,14l-1,2H19a1,1,0,0,1,0,2H9.62a2,2,0,0,1-1.79-2.89L8.9,13,5.32,4H3A1,1,0,0,1,3,2H5.32A2,2,0,0,1,7.18,3.26L7.88,5H20.8l.09,0a1,1,0,0,1,.48.05,1,1,0,0,1,.56,1.3l-2.8,7a1,1,0,0,1-.93.63Zm-.12,5A1.5,1.5,0,1,0,12,20.5,1.5,1.5,0,0,0,10.5,19Zm6,0A1.5,1.5,0,1,0,18,20.5,1.5,1.5,0,0,0,16.5,19Z">
			</path>
		</svg>
	</button>
</li>


<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="cartLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="cartLabel">Корзина</h4>
      </div>
			<div class="modal-body">
				<div class="modal-main">
					<?php if($products): ?>
						<div>
							<table class="table">
								<?php $total_price = 0 ?>
								<?php foreach($products as $product): ?>
									<?php $total_price += (int)str_replace(' ', '', $product['total'])?>
									<tr>
										<td class="hidden-xs"><a href="<?=$product['href']?>"><img src="<?=$product['thumb']?>" alt="<?=$product['name']?>"></a></td>
										<td class="product_title"><a href="<?=$product['href']?>"><?=$product['name']?></a></td>
										<td>
											<div class="my_quantity"> 
												<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" class="quant" value ="<?php echo $product['quantity']; ?>" size="5" class="form-control"/>
											</div>
										</td>
										<td class="product-price"><?=$product['total']?></td>
										<td class="block-remove">
											<button class="text-right btn btn-remove" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">
												<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
													<path d="M14 10V17M10 10V17M6 6V17.8C6 18.9201 6 19.4798 6.21799 19.9076C6.40973 20.2839 6.71547 20.5905 7.0918 20.7822C7.5192 21 8.07899 21 9.19691 21H14.8031C15.921 21 16.48 21 16.9074 20.7822C17.2837 20.5905 17.5905 20.2839 17.7822 19.9076C18 19.4802 18 18.921 18 17.8031V6M6 6H8M6 6H4M8 6H16M8 6C8 5.06812 8 4.60241 8.15224 4.23486C8.35523 3.74481 8.74432 3.35523 9.23438 3.15224C9.60192 3 10.0681 3 11 3H13C13.9319 3 14.3978 3 14.7654 3.15224C15.2554 3.35523 15.6447 3.74481 15.8477 4.23486C15.9999 4.6024 16 5.06812 16 6M16 6H18M18 6H20" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
												</svg>
											</button>
										</td>
									</tr>
								<?php endforeach;?>
								<?php if (strlen($total_price) > 5): $total_price = substr_replace($total_price, ' ', 3, 0)?>
								<?php elseif (strlen($total_price) > 4): $total_price = substr_replace($total_price, ' ', 2, 0)?>
								<?php elseif (strlen($total_price) > 3): $total_price = substr_replace($total_price, ' ', 1, 0)?>
								<?php endif; ?>
								<tr class="cart-sum">
									<td class="hidden-xs"></td>
									<td></td>
									<td>Итого:</td>
									<td class="price text-right"><?=$total_price?> &#8381;</td>
									<td></td>
								</tr>
							</table>
						</div>
					<?php else: ?>
						<p class="cart-empty"><?=$text_empty?></p>
					<?php endif; ?>
					</div>	
			</div>	
      <div class="modal-footer">
				<button type="button" class="btn btn-default pull-left btn-back" data-dismiss="modal">Назад</button>
				<a class="btn mybtn btn-primary" href="<?=$cart?>">Перейти корзину</a>
				<a class="btn mybtn btn-primary" href="<?=$checkout?>">Оформить заказ</a>
      </div>
    </div>
  </div>
</div>