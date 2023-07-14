<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<?php if ($success) { ?>
		<div class="alert alert-success"><?php echo $success; ?></div>
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
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>
				<h2><?php echo $heading_title; ?></h2>
				<?php if ($products) { ?>
				<div class="block-table">
					<table class="table">
						<tbody>
							<?php foreach ($products as $product) { ?>
							<tr>
								<td class="text-center hidden-xs"><?php if ($product['thumb']) { ?>
									<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
									<?php } ?></td>
								<td class="text-left product-info"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
								<td class="text-right"><?php if ($product['price']) { ?>
									<div class="price">
										<?php if (!$product['special']) { ?>
										<span class="total-price"><?php echo $product['price']; ?></span>
										<?php } else { ?>
										<span class="total-price"><?php echo $product['special']; ?></span> <span class="old-price"><?php echo $product['price']; ?></span>
										<?php } ?>
									</div>
									<?php } ?></td>
								<td class="text-right">
									<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn mybtn"><span class="hidden-xs"><?php echo $button_cart; ?></span>
										<svg class="hidden-sm hidden-md hidden-lg" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
											<path
												d="M10.62,14l-1,2H19a1,1,0,0,1,0,2H9.62a2,2,0,0,1-1.79-2.89L8.9,13,5.32,4H3A1,1,0,0,1,3,2H5.32A2,2,0,0,1,7.18,3.26L7.88,5H20.8l.09,0a1,1,0,0,1,.48.05,1,1,0,0,1,.56,1.3l-2.8,7a1,1,0,0,1-.93.63Zm-.12,5A1.5,1.5,0,1,0,12,20.5,1.5,1.5,0,0,0,10.5,19Zm6,0A1.5,1.5,0,1,0,18,20.5,1.5,1.5,0,0,0,16.5,19Z">
											</path>
										</svg>
									</button>
									<a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-remove">
										<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
											<path fill="none" d="M14 10V17M10 10V17M6 6V17.8C6 18.9201 6 19.4798 6.21799 19.9076C6.40973 20.2839 6.71547 20.5905 7.0918 20.7822C7.5192 21 8.07899 21 9.19691 21H14.8031C15.921 21 16.48 21 16.9074 20.7822C17.2837 20.5905 17.5905 20.2839 17.7822 19.9076C18 19.4802 18 18.921 18 17.8031V6M6 6H8M6 6H4M8 6H16M8 6C8 5.06812 8 4.60241 8.15224 4.23486C8.35523 3.74481 8.74432 3.35523 9.23438 3.15224C9.60192 3 10.0681 3 11 3H13C13.9319 3 14.3978 3 14.7654 3.15224C15.2554 3.35523 15.6447 3.74481 15.8477 4.23486C15.9999 4.6024 16 5.06812 16 6M16 6H18M18 6H20" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
										</svg>
									</a></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
				<?php } else { ?>
				<p class="text_empty"><?php echo $text_empty; ?></p>
				<?php } ?>
				<div class="buttons clearfix">
					<div><a href="<?php echo $continue; ?>" class="btn mybtn"><?php echo $button_continue; ?></a></div>
				</div>
				<?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>