<?php echo $header; ?>
<section class="main-content product-card">
	<div class="container">
		<div class="row">
			<?php $class = $column_left ? 'col-md-9' : 'col-md-12' ?>
				<?=$column_left?>
				<div class="<?=$class?>">
					<div class="row">
						<div class="content">
							<ol class="breadcrumb">
								<?php foreach ($breadcrumbs as $breadcrumb): ?>
									<li><a href="<?=$breadcrumb['href']?>"><?=$breadcrumb['text']?></a></li>
								<?php endforeach; ?>
							</ol>
							<div class="container" id="content">
								<?=$content_top?>
								<div class="row">
									<div class="col-md-7">
									<?php if ($thumb || $images) : ?>
										<ul class="thumbnails">
											<?php if ($thumb): ?>
											<li><a class="thumbnail" href="<?=$popup?>" title="<?=$heading_title?>"><img src="<?=$thumb?>" title="<?=$heading_title?>" alt="<?=$heading_title?>"/></a></li>
											<?php endif; ?>
											<?php if ($images) : ?>
											<?php foreach ($images as $image) : ?>
											<li class="image-additional"><a class="thumbnail" href="<?=$image['popup']?>" title="<?=$heading_title?>"> <img src="<?=$image['thumb']?>" title="<?=$heading_title?>" alt="<?=$heading_title?>" /></a></li>
											<?php endforeach; ?>
											<?php endif; ?>
										</ul>
									<?php endif; ?>
										<div class="products-tab">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab-description" data-toggle="tab"><?=$tab_description?></a></li>
												<?php if ($attribute_groups) : ?>
												<li><a href="#tab-specification" data-toggle="tab"><?=$tab_attribute?></a></li>
												<?php endif; ?>
												<?php if ($review_status) : ?>
												<li><a href="#tab-review" data-toggle="tab"><?=$tab_review?></a></li>
												<?php endif; ?>
											</ul>
											<div class="tab-content">
												<div class="tab-pane fade in active" id="tab-description"><?=$description?></div>
												<?php if ($attribute_groups) : ?>
												<div class="tab-pane fade" id="tab-specification">
													<table class="table">
														<?php foreach ($attribute_groups as $attribute_group) : ?>
														<thead>
															<tr>
																<td colspan="2"><strong><?=$attribute_group['name']?></strong></td>
															</tr>
														</thead>
														<tbody>
															<?php foreach ($attribute_group['attribute'] as $attribute) : ?>
															<tr>
																<td><?=$attribute['name']?></td>
																<td><?=$attribute['text']?></td>
															</tr>
															<?php endforeach; ?>
														</tbody>
														<?php endforeach; ?>
													</table>
												</div>
												<?php endif; ?>
												<?php if ($review_status) : ?>
													<div class="tab-pane fade" id="tab-review">
														<form class="form-horizontal review-form" id="form-review">
															<div id="review"></div>
															<h2><?=$text_write?></h2>
															<?php if ($review_guest) : ?>
															<div class="form-group required">
																<div class="col-sm-12">
																	<label class="control-label" for="input-name"><?=$entry_name?></label>
																	<input type="text" name="name" value="<?=$customer_name?>" id="input-name" class="form-control review-input">
																</div>
															</div>
															<div class="form-group required">
																<div class="col-sm-12">
																	<label class="control-label" for="input-review"><?=$entry_review?></label>
																	<textarea name="text" rows="5" id="input-review" class="form-control review-textarea"></textarea>
																</div>
															</div>
															<div class="form-group required">
																<div class="col-sm-12">
																	<p><?=$entry_rating?></p>
																	<span class="review-bad"><?=$entry_bad?></span>
																	<div class="review-rate">
																		<input type="radio" name="rating" value="1" />
																		<input type="radio" name="rating" value="2" />
																		<input type="radio" name="rating" value="3" />
																		<input type="radio" name="rating" value="4" />
																		<input type="radio" name="rating" value="5" />
																	</div>	
																	<span class="review-good"><?=$entry_good?></span>
																</div>
															</div>
															<?=$captcha?>
															<div class="buttons clearfix">
																<div class="pull-right">
																	<button type="button" class="mybtn" id="button-review" data-loading-text="<?=$text_loading?>" class="btn btn-primary"><?=$button_continue?></button>
																</div>
															</div>
															<?php else : ?>
															<?=$text_login?>
															<?php endif; ?>
														</form>
													</div>
												<?php endif; ?>
											</div>
										</div>
									</div>
									<div class="col-md-5">
										<div class="product-card-btns pull-right">
											<button type="button" onclick="wishlist.add('<?=$product_id?>');">
												<svg class="svg-product-card" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
													<path
														d="M5.36129 3.46995C6.03579 3.16081 6.76287 3 7.50002 3C8.23718 3 8.96425 3.16081 9.63875 3.46995C10.3129 3.77893 10.9185 4.22861 11.4239 4.78788C11.7322 5.12902 12.2678 5.12902 12.5761 4.78788C13.5979 3.65726 15.0068 3.00001 16.5 3.00001C17.9932 3.00001 19.4021 3.65726 20.4239 4.78788C21.4427 5.91515 22 7.42425 22 8.9792C22 10.5342 21.4427 12.0433 20.4239 13.1705L14.2257 20.0287C13.0346 21.3467 10.9654 21.3467 9.77429 20.0287L3.57613 13.1705C3.07086 12.6115 2.67474 11.9531 2.40602 11.2353C2.13731 10.5175 2 9.75113 2 8.9792C2 8.20728 2.13731 7.44094 2.40602 6.72315C2.67474 6.00531 3.07086 5.34694 3.57613 4.78788C4.08157 4.22861 4.68716 3.77893 5.36129 3.46995Z" />
												</svg>
											</button>
											<button	tton type="button" onclick="compare.add('<?=$product_id?>');">
												<svg class="svg-product-card" viewBox="0 0 256 256" xmlns="http://www.w3.org/2000/svg">
													<path
														d="M243.1416,131.543l-32-80c-.03222-.08106-.07178-.15772-.106-.23828-.05859-.1377-.11865-.27442-.18212-.40967-.09229-.19629-.19141-.38818-.29395-.57764-.06689-.125-.12988-.25244-.20117-.374q-.24609-.42114-.52295-.81738c-.082-.11719-.1709-.22754-.25684-.3418-.12451-.16553-.25146-.3291-.38427-.48779q-.148-.17579-.30176-.34473c-.13916-.15381-.28272-.30225-.42969-.44824-.09814-.09815-.19385-.19776-.29541-.292-.23828-.2212-.4834-.43409-.73828-.63477-.0874-.06885-.18018-.13086-.26953-.19727-.18653-.13916-.37549-.27441-.56934-.40185-.12207-.08057-.24658-.15625-.37109-.23193-.17236-.105-.34766-.20459-.5249-.3003-.13184-.0708-.26221-.14258-.396-.209-.20215-.09912-.4082-.18945-.61572-.27735-.21045-.08984-.42383-.17187-.63916-.24951-.18946-.06787-.37842-.13525-.57178-.19385-.17188-.05224-.34619-.09619-.52051-.14062-.15576-.03955-.31152-.07666-.46924-.10986-.18457-.03907-.36914-.07569-.55566-.106-.15625-.02539-.314-.04346-.47168-.063-.27393-.0332-.54932-.0581-.82715-.07226C200.419,44.0127,200.21045,44,200,44c-.0166,0-.03271.002-.04883.002-.15527.001-.311.01075-.46679.01758-.2212.00977-.44043.02344-.65918.04492-.13086.01319-.26172.02735-.39356.04493q-.468.06151-.92627.1582c-.03613.00781-.07226.01025-.10889.01855l-.0708.01563-.03271.00732L140,57.041V40a12,12,0,0,0-24,0V62.374L53.39648,76.28613l-.02587.00733c-.36084.08105-.71582.18066-1.06543.29345-.0962.03125-.189.0669-.28418.1001q-.36695.12891-.72364.28076c-.11767.04981-.23437.09912-.34961.15235-.24267.11279-.48.23486-.71435.36328q-.19263.10546-.38086.21728c-.23047.1377-.457.28125-.67822.43409-.11817.082-.23243.16845-.34766.25439q-.25708.19189-.50391.39746c-.104.08643-.20752.17236-.3081.26221-.21192.18847-.416.38574-.61426.58935-.041.042-.085.08057-.12549.12354-.23779.252-.4624.5166-.67871.78955-.05762.07275-.11084.14795-.1665.22217q-.23877.31494-.45655.647c-.05859.08887-.11572.17773-.17187.26807-.13916.22509-.27.45605-.395.6914-.043.08155-.08984.16114-.13086.24366-.15039.29931-.291.60449-.417.91943l-.019.04785-.01368.03369L12.8584,163.543A11.99686,11.99686,0,0,0,12,168c0,12.13184,6.19873,22.42871,17.4541,28.99316A54.96252,54.96252,0,0,0,56,204a54.96252,54.96252,0,0,0,26.5459-7.00684C93.80127,190.42871,100,180.13184,100,168a11.99686,11.99686,0,0,0-.8584-4.457L72.38477,96.65137,116,86.959V204H104a12,12,0,0,0,0,24h48a12,12,0,0,0,0-24H140V81.626L180.418,72.644,156.8584,131.543A11.99686,11.99686,0,0,0,156,136c0,12.13184,6.19873,22.42871,17.4541,28.99316a53.78891,53.78891,0,0,0,53.0918,0C237.80127,158.42871,244,148.13184,244,136A11.99686,11.99686,0,0,0,243.1416,131.543ZM56,180c-3.71094,0-17.9707-1.86719-19.80518-10.17578L56,120.31055l19.80518,49.51367C73.9707,178.13281,59.71094,180,56,180Zm144-32c-3.71094,0-17.9707-1.86719-19.80518-10.17578L200,88.31055l19.80518,49.51367C217.9707,146.13281,203.71094,148,200,148Z" />
												</svg>
											</button>
										</div>
										<h1><?=$heading_title?></h1>
										<ul class="list-unstyled product-list-info">
											<?php if ($manufacturer) : ?>
											<li><?=$text_manufacturer?> <a href="<?=$manufacturers?>"><?=$manufacturer?></a></li>
											<?php endif; ?>
											<li><?=$text_model?> <?=$model?></li>
											<?php if ($reward) : ?>
											<li><?=$text_reward?> <?=$reward?></li>
											<?php endif; ?>
										</ul>
										<div class="product-card-prices">
										<?php if(!$special): ?>
											<p class="product-card-price"><?=$price?></p>
										<?php else: ?>
											<span class="product-card-price"><?=$special?></span>
											<span class="product-cart-discount"><?=$price?></span>
										<?php endif;?>
										</div>
										<div id="product">
											<?php if ($options) { ?>
											<h3 class="title-options"><?php echo $text_option; ?></h3>
											<?php foreach ($options as $option) { ?>
											<?php if ($option['type'] == 'select') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
												<select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
													<option value=""><?php echo $text_select; ?></option>
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
													<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
													<?php if ($option_value['price']) { ?>
													(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
													<?php } ?>
													</option>
													<?php } ?>
												</select>
											</div>
											<?php } ?>
											<?php if ($option['type'] == 'radio') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div id="input-option<?php echo $option['product_option_id']; ?>">
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
													<div class="radio">
														<label>
															<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
															<?php if ($option_value['image']) { ?>
															<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
															<?php } ?>                    
															<?php echo $option_value['name']; ?>
															<?php if ($option_value['price']) { ?>
															(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
															<?php } ?>
														</label>
													</div>
													<?php } ?>
												</div>
											</div>
											<?php } ?>
											<?php if ($option['type'] == 'checkbox') { ?>
											<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
												<label class="control-label"><?php echo $option['name']; ?></label>
												<div id="input-option<?php echo $option['product_option_id']; ?>">
													<?php foreach ($option['product_option_value'] as $option_value) { ?>
													<div class="checkbox">
														<label>
															<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
															<?php if ($option_value['image']) { ?>
															<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
															<?php } ?>
															<?php echo $option_value['name']; ?>
															<?php if ($option_value['price']) { ?>
															(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
															<?php } ?>
														</label>
													</div>
													<?php } ?>
												</div>
											</div>
											<?php } ?>
											<?php } ?>
											<?php } ?>
											<?php if ($recurrings) { ?>
											<h3><?php echo $text_payment_recurring; ?></h3>
											<div class="form-group required">
												<select name="recurring_id" class="form-control">
													<option value=""><?php echo $text_select; ?></option>
													<?php foreach ($recurrings as $recurring) { ?>
													<option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
													<?php } ?>
												</select>
												<div class="help-block" id="recurring-description"></div>
											</div>
											<?php } ?>
											<div class="form-group product-card-cart">
												<?php if ($minimum == 1): ?>
												<input type="hidden" name="product_id" value="<?=$product_id?>" />
												<button type="button" id="button-cart" data-loading-text="<?=$text_loading?>" class="btn mybtn"><?=$button_cart?></button>
												<?php else: ?>
												<label class="control-label" for="input-quantity"><?=$entry_qty?></label>
												<div class="my_quantity"> 
													<button	button type="submit" class="my_minus">
														<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M4 12C4 11.4477 4.44772 11 5 11H19C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13H5C4.44772 13 4 12.5523 4 12Z" fill="#000000"></path> </g></svg>
													</button>
													<input type="text" name="quantity" class="quant" value="<?=$minimum?>" size="5" id="input-quantity"class="form-control"/>
													<button type="submit" class="my_plus">
														<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M12 4C12.5523 4 13 4.44772 13 5V11H19C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13H13V19C13 19.5523 12.5523 20 12 20C11.4477 20 11 19.5523 11 19V13H5C4.44772 13 4 12.5523 4 12C4 11.4477 4.44772 11 5 11H11V5C11 4.44772 11.4477 4 12 4Z"></path> </g></svg>
													</button>
												</div>
												<input type="hidden" name="product_id" value="<?=$product_id?>" />
												<button type="button" id="button-cart" data-loading-text="<?=$text_loading?>" class="btn mybtn"><?=$button_cart?></button>
												<?php endif; ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php if ($products) { ?>
				<div class="container product-card-recommend">
				<h3><?php echo $text_related; ?></h3>
				<div class="row">
					<?php $i = 0; ?>
					<?php foreach ($products as $product) { ?>
					<?php if ($column_left && $column_right) { ?>
					<?php $class = 'col-xs-8 col-md-6'; ?>
					<?php } elseif ($column_left || $column_right) { ?>
					<?php $class = 'col-xs-12 col-md-4 col-sm-6'; ?>
					<?php } else { ?>
					<?php $class = 'col-xs-12 col-md-3 col-sm-6'; ?>
					<?php } ?>
					<div class="<?php echo $class; ?>">
						<div class="product">
							<a href="<?=$product['href']?>"><img src="<?=$product['thumb']?>" alt="<?=$product['name']?>"
									class="product-img"></a>
							<div class="product-btns">
								<button class="btn btn-comparison" onclick="compare.add('<?php echo $product['product_id']; ?>');">
									<svg class="svg-header" viewBox="0 0 256 256" xmlns="http://www.w3.org/2000/svg">
										<path
											d="M243.1416,131.543l-32-80c-.03222-.08106-.07178-.15772-.106-.23828-.05859-.1377-.11865-.27442-.18212-.40967-.09229-.19629-.19141-.38818-.29395-.57764-.06689-.125-.12988-.25244-.20117-.374q-.24609-.42114-.52295-.81738c-.082-.11719-.1709-.22754-.25684-.3418-.12451-.16553-.25146-.3291-.38427-.48779q-.148-.17579-.30176-.34473c-.13916-.15381-.28272-.30225-.42969-.44824-.09814-.09815-.19385-.19776-.29541-.292-.23828-.2212-.4834-.43409-.73828-.63477-.0874-.06885-.18018-.13086-.26953-.19727-.18653-.13916-.37549-.27441-.56934-.40185-.12207-.08057-.24658-.15625-.37109-.23193-.17236-.105-.34766-.20459-.5249-.3003-.13184-.0708-.26221-.14258-.396-.209-.20215-.09912-.4082-.18945-.61572-.27735-.21045-.08984-.42383-.17187-.63916-.24951-.18946-.06787-.37842-.13525-.57178-.19385-.17188-.05224-.34619-.09619-.52051-.14062-.15576-.03955-.31152-.07666-.46924-.10986-.18457-.03907-.36914-.07569-.55566-.106-.15625-.02539-.314-.04346-.47168-.063-.27393-.0332-.54932-.0581-.82715-.07226C200.419,44.0127,200.21045,44,200,44c-.0166,0-.03271.002-.04883.002-.15527.001-.311.01075-.46679.01758-.2212.00977-.44043.02344-.65918.04492-.13086.01319-.26172.02735-.39356.04493q-.468.06151-.92627.1582c-.03613.00781-.07226.01025-.10889.01855l-.0708.01563-.03271.00732L140,57.041V40a12,12,0,0,0-24,0V62.374L53.39648,76.28613l-.02587.00733c-.36084.08105-.71582.18066-1.06543.29345-.0962.03125-.189.0669-.28418.1001q-.36695.12891-.72364.28076c-.11767.04981-.23437.09912-.34961.15235-.24267.11279-.48.23486-.71435.36328q-.19263.10546-.38086.21728c-.23047.1377-.457.28125-.67822.43409-.11817.082-.23243.16845-.34766.25439q-.25708.19189-.50391.39746c-.104.08643-.20752.17236-.3081.26221-.21192.18847-.416.38574-.61426.58935-.041.042-.085.08057-.12549.12354-.23779.252-.4624.5166-.67871.78955-.05762.07275-.11084.14795-.1665.22217q-.23877.31494-.45655.647c-.05859.08887-.11572.17773-.17187.26807-.13916.22509-.27.45605-.395.6914-.043.08155-.08984.16114-.13086.24366-.15039.29931-.291.60449-.417.91943l-.019.04785-.01368.03369L12.8584,163.543A11.99686,11.99686,0,0,0,12,168c0,12.13184,6.19873,22.42871,17.4541,28.99316A54.96252,54.96252,0,0,0,56,204a54.96252,54.96252,0,0,0,26.5459-7.00684C93.80127,190.42871,100,180.13184,100,168a11.99686,11.99686,0,0,0-.8584-4.457L72.38477,96.65137,116,86.959V204H104a12,12,0,0,0,0,24h48a12,12,0,0,0,0-24H140V81.626L180.418,72.644,156.8584,131.543A11.99686,11.99686,0,0,0,156,136c0,12.13184,6.19873,22.42871,17.4541,28.99316a53.78891,53.78891,0,0,0,53.0918,0C237.80127,158.42871,244,148.13184,244,136A11.99686,11.99686,0,0,0,243.1416,131.543ZM56,180c-3.71094,0-17.9707-1.86719-19.80518-10.17578L56,120.31055l19.80518,49.51367C73.9707,178.13281,59.71094,180,56,180Zm144-32c-3.71094,0-17.9707-1.86719-19.80518-10.17578L200,88.31055l19.80518,49.51367C217.9707,146.13281,203.71094,148,200,148Z" />
									</svg>
								</button>
								<button class="btn btn-favourite" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
									<svg class="svg-header" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
										<path
											d="M5.36129 3.46995C6.03579 3.16081 6.76287 3 7.50002 3C8.23718 3 8.96425 3.16081 9.63875 3.46995C10.3129 3.77893 10.9185 4.22861 11.4239 4.78788C11.7322 5.12902 12.2678 5.12902 12.5761 4.78788C13.5979 3.65726 15.0068 3.00001 16.5 3.00001C17.9932 3.00001 19.4021 3.65726 20.4239 4.78788C21.4427 5.91515 22 7.42425 22 8.9792C22 10.5342 21.4427 12.0433 20.4239 13.1705L14.2257 20.0287C13.0346 21.3467 10.9654 21.3467 9.77429 20.0287L3.57613 13.1705C3.07086 12.6115 2.67474 11.9531 2.40602 11.2353C2.13731 10.5175 2 9.75113 2 8.9792C2 8.20728 2.13731 7.44094 2.40602 6.72315C2.67474 6.00531 3.07086 5.34694 3.57613 4.78788C4.08157 4.22861 4.68716 3.77893 5.36129 3.46995Z" />
									</svg>
								</button>
							</div>
							<div class="product-info">
								<a href="<?=$product['href']?>">
									<span class="product-title"><?=$product['name']?></span>
								</a>
								<p class="product-desc"><?=$product['description']?></p>
								<div class="product-buy">
									<div class="product-prices">
									<?php if(!$product['special']): ?>
										<p class="product-price"><?=$product['price']?></p>
									<?php else: ?>
										<p class="product-discount"><?=$product['price']?></p>
										<p class="product-price"><?=$product['special']?></p>
									<?php endif;?>
									</div>
									<button class="btn btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
								</div>
							</div>
						</div>
					</div>
					<?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
					<div class="clearfix visible-md visible-sm"></div>
					<?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
					<div class="clearfix visible-md"></div>
					<?php } elseif (($i+1) % 4 == 0) { ?>
					<div class="clearfix visible-md"></div>
					<?php } ?>
					<?php $i++; ?>
					<?php } ?>
				</div>
				<?php } ?>
				<?php if ($tags) { ?>
				<div class="tags"><?php echo $text_tags; ?>
					<?php for ($i = 0; $i < count($tags); $i++) { ?>
					<?php if ($i < (count($tags) - 1)) { ?>
					<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
					<?php } else { ?>
					<a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
					<?php } ?>
					<?php } ?>
				</div>
				</div>
				<?php } ?>
		<?=$content_bottom?>	
	</div>
</section>

<script>
	$(function(){
		$('.thumbnails').magnificPopup({
			type:'image',
			delegate: 'a',
			gallery: {
				enabled:true
			}
		});


		$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
		});

		$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

		$('#button-review').on('click', function() {
			$.ajax({
				url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
				type: 'post',
				dataType: 'json',
				data: $("#form-review").serialize(),
				beforeSend: function() {
					$('#button-review').button('loading');
				},
				complete: function() {
					$('#button-review').button('reset');
				},
				success: function(json) {
					$('.alert-success, .alert-danger').remove();

					if (json['error']) {
						$('#review').after('<div class="alert alert-danger alert-review">' + json['error'] + '</div>');
						setTimeout(()=>$(".alert.alert-danger").remove(), 4000);
					}

					if (json['success']) {
						$('#review').after('<div class="alert alert-success alert-review"> ' + json['success'] + '</div>');

						$('input[name=\'name\']').val('');
						$('textarea[name=\'text\']').val('');
						$('input[name=\'rating\']:checked').prop('checked', false);
						setTimeout(()=>$(".alert.alert-success").remove(), 4000);
					}
				}
			});
				// grecaptcha.reset();
		});

	
		$('#button-cart').on('click', function() {
			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
				dataType: 'json',
				beforeSend: function() {
					$('#button-cart').button('loading');
				},
				complete: function() {
					$('#button-cart').button('reset');
				},
				success: function(json) {
					$('.alert, .text-danger').remove();
					$('.form-group').removeClass('has-error');

					if (json['error']) {
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								var element = $('#input-option' + i.replace('_', '-'));

								if (element.parent().hasClass('input-group')) {
									element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
								} else {
									element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
								}
							}
						}

						if (json['error']['recurring']) {
							$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
						}

						// Highlight any found errors
						$('.text-danger').parent().addClass('has-error');
					}

					if (json['success']) {
						// $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

						setTimeout(function () {
						$('#cart .cart-sum-price').html(json['total']);
						}, 100);

						// $('html, body').animate({ scrollTop: 0 }, 'slow');

						
						$('#cart .modal-body').load('index.php?route=common/cart/info .modal-body');
						$('#cart').modal();

					}
				},
						error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
			});
		});








	});
	

</script>











<?php echo $footer; ?>