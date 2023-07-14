<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>
		<?php if ($success) { ?>
		<div class="alert alert-success"><?php echo $success; ?></div>
		<?php } ?>
		<div class="row"><?php echo $column_left; ?>
			<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-sm-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-12'; ?>
			<?php } ?>
			<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
				<h1><?php echo $heading_title; ?></h1>
				<?php if ($products) { ?>
				<table class="table table-responsive table-bordered">
					<thead>
						<tr>
							<td class="text-center" colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $text_product; ?></strong></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><?php echo $text_name; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><a href="<?php echo $product['href']; ?>"><strong><?php echo $product['name']; ?></strong></a></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_image; ?></td>
							<?php foreach ($products as $product) { ?>
							<td class="text-center"><?php if ($product['thumb']) { ?>
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
								<?php } ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_price; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php if ($product['price']) { ?>
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
								<strike><?php echo $product['price']; ?></strike> <?php echo $product['special']; ?>
								<?php } ?>
								<?php } ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_model; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $product['model']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_manufacturer; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $product['manufacturer']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_availability; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $product['availability']; ?></td>
							<?php } ?>
						</tr>
						<?php if ($review_status) { ?>
						<tr>
							<td><?php echo $text_rating; ?></td>
							<?php foreach ($products as $product) { ?>
							<td class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
								<?php if ($product['rating'] < $i) { ?>
									<span class="svg-stroke">
										<svg viewBox="0 -0.5 21 21" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><g id="Page-1" stroke-width="1" fill-rule="evenodd"> <g id="Dribbble-Light-Preview" transform="translate(-139.000000, -320.000000)"> <g id="icons" transform="translate(56.000000, 160.000000)"> <path d="M98.7860271,170.404 C97.7402268,171.416 97.2624767,172.872 97.5102768,174.301 L97.9691269,176.957 L95.5646263,175.703 C94.9304261,175.372 94.216426,175.197 93.5003258,175.197 C92.7831756,175.197 92.0691754,175.372 91.4349753,175.703 L89.0304747,176.957 L89.4903748,174.301 C89.7371249,172.872 89.2593748,171.416 88.2135745,170.404 L86.268974,168.523 L88.9569747,168.135 C90.402825,167.927 91.6512753,167.027 92.2980755,165.727 L93.5003258,163.31 L94.7025761,165.727 C95.3483262,167.027 96.5978265,167.927 98.0426269,168.135 L100.731678,168.523 L98.7860271,170.404 Z M103.423878,169.433 C104.551578,168.342 103.929978,166.441 102.370728,166.216 L98.408027,165.645 C97.7885268,165.556 97.2530267,165.17 96.9768766,164.613 L95.2044762,161.051 C94.8558761,160.35 94.1775759,160 93.5003258,160 C92.8220256,160 92.1437255,160.35 91.7951254,161.051 L90.0237749,164.613 C89.7465749,165.17 89.2110747,165.556 88.5926246,165.645 L84.6299236,166.216 C83.0706733,166.441 82.4480231,168.342 83.5757234,169.433 L86.4432741,172.206 C86.8916242,172.639 87.0963742,173.263 86.9903242,173.875 L86.313074,177.791 C86.102024,179.01 87.0785242,180 88.1862745,180 C88.4781746,180 88.7805746,179.931 89.0714247,179.779 L92.6151756,177.93 C92.8923756,177.786 93.1958257,177.713 93.5003258,177.713 C93.8037759,177.713 94.1072259,177.786 94.384426,177.93 L97.9292269,179.779 C98.2200769,179.931 98.521427,180 98.8133271,180 C99.9210773,180 100.897578,179.01 100.686528,177.791 L100.010327,173.875 C99.9042773,173.263 100.107977,172.639 100.556327,172.206 L103.423878,169.433 Z" id="star_favorite-[#1498]"> </path> </g> </g> </g> </g></svg>
									</span>
								<?php } else { ?>
									<span class="svg-filled">
										<svg viewBox="0 -0.5 21 21" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><g id="Page-1" stroke-width="1" fill-rule="evenodd"> <g id="Dribbble-Light-Preview" transform="translate(-99.000000, -320.000000)"> <g id="icons" transform="translate(56.000000, 160.000000)"> <path d="M60.556381,172.206 C60.1080307,172.639 59.9043306,173.263 60.0093306,173.875 L60.6865811,177.791 C60.8976313,179.01 59.9211306,180 58.8133798,180 C58.5214796,180 58.2201294,179.931 57.9282291,179.779 L54.3844766,177.93 C54.1072764,177.786 53.8038262,177.714 53.499326,177.714 C53.1958758,177.714 52.8924256,177.786 52.6152254,177.93 L49.0714729,179.779 C48.7795727,179.931 48.4782224,180 48.1863222,180 C47.0785715,180 46.1020708,179.01 46.3131209,177.791 L46.9903714,173.875 C47.0953715,173.263 46.8916713,172.639 46.443321,172.206 L43.575769,169.433 C42.4480682,168.342 43.0707186,166.441 44.6289197,166.216 L48.5916225,165.645 C49.211123,165.556 49.7466233,165.17 50.0227735,164.613 L51.7951748,161.051 C52.143775,160.35 52.8220755,160 53.499326,160 C54.1776265,160 54.855927,160.35 55.2045272,161.051 L56.9769285,164.613 C57.2530787,165.17 57.7885791,165.556 58.4080795,165.645 L62.3707823,166.216 C63.9289834,166.441 64.5516338,168.342 63.423933,169.433 L60.556381,172.206 Z" id="star_favorite-[#1499]"></path></g></g></g></g></svg>
									</span>
								<?php } ?>
								<?php } ?>
								<br />
								<?php echo $product['reviews']; ?></td>
							<?php } ?>
						</tr>
						<?php } ?>
						<tr>
							<td><?php echo $text_summary; ?></td>
							<?php foreach ($products as $product) { ?>
							<td class="description"><?php echo $product['description']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_weight; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $product['weight']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_dimension; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $product['length']; ?> x <?php echo $product['width']; ?> x <?php echo $product['height']; ?></td>
							<?php } ?>
						</tr>
					</tbody>
					<?php foreach ($attribute_groups as $attribute_group) { ?>
					<thead>
						<tr>
							<td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $attribute_group['name']; ?></strong></td>
						</tr>
					</thead>
					<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
					<tbody>
						<tr>
							<td><?php echo $attribute['name']; ?></td>
							<?php foreach ($products as $product) { ?>
							<?php if (isset($product['attribute'][$key])) { ?>
							<td><?php echo $product['attribute'][$key]; ?></td>
							<?php } else { ?>
							<td></td>
							<?php } ?>
							<?php } ?>
						</tr>
					</tbody>
					<?php } ?>
					<?php } ?>
					<tr>
						<td></td>
						<?php foreach ($products as $product) { ?>
						<td class="text-center"><input type="button" value="<?php echo $button_cart; ?>" class="btn mybtn" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" />
							<a href="<?php echo $product['remove']; ?>" class="btn mybtn"><?php echo $button_remove; ?></a></td>
						<?php } ?>
					</tr>
				</table>
				<?php } else { ?>
				<p><?php echo $text_empty; ?></p>
				<div class="buttons">
					<div class="text-empty pull-right"><a href="<?php echo $continue; ?>" class="btn mybtn"><?php echo $button_continue; ?></a></div>
				</div>
				<?php } ?>
				<?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>