<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<div class="row product-search"><?php echo $column_left; ?>
			<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-md-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-md-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-md-12'; ?>
			<?php } ?>
			<div id="content" class="category-page"><?php echo $content_top; ?>
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>
				<h1 class="heading-title"><?php echo $heading_title; ?></h1>
				<label class="control-label entry-search" for="input-search"><?php echo $entry_search; ?></label>
				<div class="row">
					<div class="col-sm-3 col-xs-12">
						<input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="line-search form-control" />
					</div>
					<div class="col-sm-4 col-xs-12">
						<select name="category_id" class="form-control">
							<option value="0"><?php echo $text_category; ?></option>
							<?php foreach ($categories as $category_1) { ?>
							<?php if ($category_1['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
							<?php } ?>
							<?php foreach ($category_1['children'] as $category_2) { ?>
							<?php if ($category_2['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
							<?php } ?>
							<?php foreach ($category_2['children'] as $category_3) { ?>
							<?php if ($category_3['category_id'] == $category_id) { ?>
							<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
							<?php } ?>
							<?php } ?>
							<?php } ?>
							<?php } ?>
						</select>
					</div>
					<div class="col-sm-3 col-xs-12">
						<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-search mybtn" />
					</div>
				</div>
				<div class="row checkboxes">
					<div class="col-xs-12 col-sm-3">
						<label class="checkbox-inline">
							<?php if ($sub_category) { ?>
							<input type="checkbox" name="sub_category" value="1" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="sub_category" value="1" />
							<?php } ?>
							<?php echo $text_sub_category; ?></label>
					</div>
					<div class="col-xs-12 col-sm-3">
						<label class="checkbox-inline">
						<?php if ($description) { ?>
						<input type="checkbox" name="description" value="1" id="description" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="description" value="1" id="description" />
						<?php } ?>
						<?php echo $entry_description; ?></label>
					</div>
				</div>
				<h2 class="text-search"><?php echo $text_search; ?></h2>
				<?php if ($products) { ?>
				<div class="row options-view">
					<div class="col-md-4 col-sm-4 col-xs-7">
						<div class="form-group input-group form-sort">
							<label class="input-group-addon" for="input-sort">
								<svg class="category-stroke-svg" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M20 7L4 7" stroke-width="1.5" stroke-linecap="round"></path> <path d="M15 12L4 12" stroke-width="1.5" stroke-linecap="round"></path> <path d="M9 17H4" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
							</label>
							<select id="input-sort" class="form-control" onchange="location = this.value;">
								<?php foreach ($sorts as $sorts) { ?>
								<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
								<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
								<?php } ?>
								<?php } ?>
							</select>
						</div>
					</div>
					<div class="col-md-2 hidden-xs pull-right">
						<div class="form-view pull-right">
							<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>">
								<svg class="category-stroke-svg" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M10.5 14L17 14" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 14H7.5" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 10.5H7.5" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 17.5H7.5" stroke-width="1.5" stroke-linecap="round"></path> <path d="M10.5 10.5H17" stroke-width="1.5" stroke-linecap="round"></path> <path d="M10.5 17.5H17" stroke-width="1.5" stroke-linecap="round"></path> <path d="M8 3.5C8 2.67157 8.67157 2 9.5 2H14.5C15.3284 2 16 2.67157 16 3.5V4.5C16 5.32843 15.3284 6 14.5 6H9.5C8.67157 6 8 5.32843 8 4.5V3.5Z" stroke-width="1.5"></path> <path d="M21 16.0002C21 18.8286 21 20.2429 20.1213 21.1215C19.2426 22.0002 17.8284 22.0002 15 22.0002H9C6.17157 22.0002 4.75736 22.0002 3.87868 21.1215C3 20.2429 3 18.8286 3 16.0002V13.0002M16 4.00195C18.175 4.01406 19.3529 4.11051 20.1213 4.87889C21 5.75757 21 7.17179 21 10.0002V12.0002M8 4.00195C5.82497 4.01406 4.64706 4.11051 3.87868 4.87889C3.11032 5.64725 3.01385 6.82511 3.00174 9" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
							</button>
							<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>">
								<svg class="category-stroke-svg" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M5.5 15.5C5.5 14.5572 5.5 14.0858 5.79289 13.7929C6.08579 13.5 6.55719 13.5 7.5 13.5H8.5C9.44281 13.5 9.91421 13.5 10.2071 13.7929C10.5 14.0858 10.5 14.5572 10.5 15.5V16.5C10.5 17.4428 10.5 17.9142 10.2071 18.2071C9.91421 18.5 9.44281 18.5 8.5 18.5C7.08579 18.5 6.37868 18.5 5.93934 18.0607" stroke-width="1.5" stroke-linecap="round"></path> <path d="M5.5 8.5C5.5 7.08579 5.5 6.37868 5.93934 5.93934C6.37868 5.5 7.08579 5.5 8.5 5.5C9.44281 5.5 9.91421 5.5 10.2071 5.79289C10.5 6.08579 10.5 6.55719 10.5 7.5V8.5C10.5 9.44281 10.5 9.91421 10.2071 10.2071C9.91421 10.5 9.44281 10.5 8.5 10.5H7.5C6.55719 10.5 6.08579 10.5 5.79289 10.2071C5.5 9.91421 5.5 9.44281 5.5 8.5Z" stroke-width="1.5"></path> <path d="M13.5 15.5C13.5 14.5572 13.5 14.0858 13.7929 13.7929C14.0858 13.5 14.5572 13.5 15.5 13.5H16.5C17.4428 13.5 17.9142 13.5 18.2071 13.7929C18.5 14.0858 18.5 14.5572 18.5 15.5C18.5 16.9142 18.5 17.6213 18.0607 18.0607C17.6213 18.5 16.9142 18.5 15.5 18.5C14.5572 18.5 14.0858 18.5 13.7929 18.2071C13.5 17.9142 13.5 17.4428 13.5 16.5V15.5Z" stroke-width="1.5"></path> <path d="M18.5 8.5C18.5 9.44281 18.5 9.91421 18.2071 10.2071C17.9142 10.5 17.4428 10.5 16.5 10.5H15.5C14.5572 10.5 14.0858 10.5 13.7929 10.2071C13.5 9.91421 13.5 9.44281 13.5 8.5V7.5C13.5 6.55719 13.5 6.08579 13.7929 5.79289C14.0858 5.5 14.5572 5.5 15.5 5.5C16.9142 5.5 17.6213 5.5 18.0607 5.93934" stroke-width="1.5" stroke-linecap="round"></path> <path d="M22 14C22 14.3492 22 14.6822 21.9991 15M14 22C17.7712 22 19.6569 22 20.8284 20.8284C21.4816 20.1752 21.7706 19.3001 21.8985 18" stroke-width="1.5" stroke-linecap="round"></path> <path d="M10 22C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14" stroke-width="1.5" stroke-linecap="round"></path> <path d="M10 2C6.22876 2 4.34315 2 3.17157 3.17157C2.51839 3.82475 2.22937 4.69989 2.10149 6M2 10C2 9.65081 2 9.31779 2.00093 9" stroke-width="1.5" stroke-linecap="round"></path> <path d="M14 2C17.7712 2 19.6569 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
							</button>
						</div>
					</div>
					<div class="col-md-3 col-xs-5 col-sm-3 pull-right">
						<div class="form-group input-group form-limits">
							<label class="input-group-addon" for="input-limit">
								<svg class="category-stroke-svg" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M22 12C22 12 21.0071 12.8907 19.0212 13.6851L16.2127 14.8085C14.2268 15.6028 13.2339 16 12 16C10.7661 16 9.77318 15.6028 7.7873 14.8085L4.97883 13.6851C2.99294 12.8907 2 12 2 12" stroke-width="1.5" stroke-linecap="round"></path> <path d="M2 16C2 16 2.99294 16.8907 4.97883 17.6851L7.7873 18.8085C9.77318 19.6028 10.7661 20 12 20C12.9539 20 13.7639 19.7626 15 19.2878M19.0212 17.6851C21.0071 16.8907 22 16 22 16" stroke-width="1.5" stroke-linecap="round"></path> <path d="M4.97883 6.31492C2.99294 7.10927 2 7.50645 2 8C2 8.49355 2.99294 8.89073 4.97883 9.68508L7.7873 10.8085C9.77318 11.6028 10.7661 12 12 12C13.2339 12 14.2268 11.6028 16.2127 10.8085L19.0212 9.68508C21.0071 8.89073 22 8.49355 22 8C22 7.50645 21.0071 7.10927 19.0212 6.31492L16.2127 5.19153C14.2268 4.39718 13.2339 4 12 4C11.0461 4 10.2361 4.2374 9 4.71221" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
							</label>
							<select id="input-limit" class="form-control" onchange="location = this.value;">
								<?php foreach ($limits as $limits) { ?>
								<?php if ($limits['value'] == $limit) { ?>
								<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
								<?php } ?>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<?php foreach ($products as $product) { ?>
					<div class="product-layout product-list col-xs-12">
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
									</svg></button>
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
					<?php } ?>
				</div>
				<div class="row">
					<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
					<div class="col-sm-6 text-right"><?php echo $results; ?></div>
				</div>
				<?php } else { ?>
				<p><?php echo $text_empty; ?></p>
				<?php } ?>
				<?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = $('base').attr('href') + 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>