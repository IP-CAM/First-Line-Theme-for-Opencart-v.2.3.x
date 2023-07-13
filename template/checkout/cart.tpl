<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><?php echo $attention; ?>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><?php echo $success; ?>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-md-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-md-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
			<h1 class="cart-title"><?php echo $heading_title; ?></h1>
			<div class="left-content col-lg-8">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<div>
						<table class="cart-table table">
							<tbody>
								<?php $quant = 0 ?>
								<?php foreach ($products as $product) { ?>
									<?php $quant += $product['quantity'] ?>
									<tr>
									<td class="hidden-xs"><?php if ($product['thumb']) { ?>
										<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
										<?php } ?></td>
									<td class="product-info"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
										<?php if (!$product['stock']) { ?>
										<span class="text-danger">***</span>
										<?php } ?>
										<small><?php echo $product['model']; ?></small>
										<?php if ($product['option']) { ?>
										<?php foreach ($product['option'] as $option) { ?>
										<small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
										<?php } ?>
										<?php } ?>
										<?php if ($product['reward']) { ?>
										<small><?php echo $product['reward']; ?></small>
										<?php } ?>
										<?php if ($product['recurring']) { ?>
										<span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
										<?php } ?>
									</td>
									<td>
										<div class="input-group">
											<div class="my_quantity"> 
												<button type="submit" class="my_minus">
													<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M4 12C4 11.4477 4.44772 11 5 11H19C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13H5C4.44772 13 4 12.5523 4 12Z" fill="#000000"></path> </g></svg>
												</button>
												<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" class="quant" value ="<?php echo $product['quantity']; ?>" size="5" class="form-control"/>
												<button type="submit" class="my_plus">
													<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M12 4C12.5523 4 13 4.44772 13 5V11H19C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13H13V19C13 19.5523 12.5523 20 12 20C11.4477 20 11 19.5523 11 19V13H5C4.44772 13 4 12.5523 4 12C4 11.4477 4.44772 11 5 11H11V5C11 4.44772 11.4477 4 12 4Z"></path> </g></svg>
												</button>
												<button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary btn-reload">
													<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M4,12a1,1,0,0,1-2,0A9.983,9.983,0,0,1,18.242,4.206V2.758a1,1,0,1,1,2,0v4a1,1,0,0,1-1,1h-4a1,1,0,0,1,0-2h1.743A7.986,7.986,0,0,0,4,12Zm17-1a1,1,0,0,0-1,1A7.986,7.986,0,0,1,7.015,18.242H8.757a1,1,0,1,0,0-2h-4a1,1,0,0,0-1,1v4a1,1,0,0,0,2,0V19.794A9.984,9.984,0,0,0,22,12,1,1,0,0,0,21,11Z"></path></g></svg>
												</button>
											</div>
										</div>
									</td>
									<td class="price"><?php echo $product['total']; ?></td>
									<td>
										<button class="btn btn-remove" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">
											<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
												<path fill="none" d="M14 10V17M10 10V17M6 6V17.8C6 18.9201 6 19.4798 6.21799 19.9076C6.40973 20.2839 6.71547 20.5905 7.0918 20.7822C7.5192 21 8.07899 21 9.19691 21H14.8031C15.921 21 16.48 21 16.9074 20.7822C17.2837 20.5905 17.5905 20.2839 17.7822 19.9076C18 19.4802 18 18.921 18 17.8031V6M6 6H8M6 6H4M8 6H16M8 6C8 5.06812 8 4.60241 8.15224 4.23486C8.35523 3.74481 8.74432 3.35523 9.23438 3.15224C9.60192 3 10.0681 3 11 3H13C13.9319 3 14.3978 3 14.7654 3.15224C15.2554 3.35523 15.6447 3.74481 15.8477 4.23486C15.9999 4.6024 16 5.06812 16 6M16 6H18M18 6H20" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
											</svg>
										</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</form>
			</div>
			<div class="right-content col-lg-offset-1 col-sm-offset-3 col-lg-3 col-sm-6">
				<div class="row">
					<?php $res_total = array_pop($totals);?>
					<table class="table">
						<h3><?=$text_title?></h3>
						<span><?=$text_quantity?></span><span><?=$quant?></span><span><?=$text_quantity_t?></span>
						<?php foreach ($totals as $total) { ?>
						<tr>
							<td class="text-left"><strong><?php echo $res_total['title']; ?>:</strong></td>
							<td class="text-right"><?php echo $res_total['text']; ?></td>
						</tr>
						<?php } ?>
					</table>
				</div>
				<div class="buttons clearfix">
					<div class="text-center"><a href="<?php echo $checkout; ?>" class="btn mybtn btn-primary"><?php echo $button_checkout; ?></a></div>
				</div>
			</div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
