<section class="recommend">
		<div class="container">
			<div class="row">
				<div class="content">
					<h4><?=$heading_title?></h4>
					<!-- Слайдер из трех элементов -->
					<div class="carousel-recommend">
						<div id="carousel-recommend" class="carousel slide container" data-ride="carousel" data-interval="3000"
							data-pause="hover">

							<!-- Обертка для слайдов -->
							<div class="carousel-inner" role="listbox">
							<?php $i = 0; ?>
							<?php foreach(array_chunk($products, 3) as $product_list): ?>
								<div <?php echo ($i === 0) ? ' class="item clearfix active"' : ' class="item clearfix"'; ?>>
								<?php $i++; ?>
								<?php $j = 0; ?>
								<?php foreach($product_list as $product): ?>
									<div <?php echo ($j === 1 || $j === 2) ? ' class="col-md-4 hidden-xs hidden-sm"' : ' class="col-md-4"'; ?>>
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
									<?php $j++; ?>
								<?php endforeach; ?>
								</div>
							<?php endforeach; ?>
								
							</div>

							<!-- Элементы управления -->
							<a class="left carousel-control" href="#carousel-recommend" role="button" data-slide="prev">
								<span aria-hidden="true">
									<svg viewBox="-4.5 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink">
										</defs>
										<g id="Page-1" stroke-width="1" fill-rule="evenodd">
											<g id="Dribbble-Light-Preview" transform="translate(-345.000000, -6679.000000)">
												<g id="icons" transform="translate(56.000000, 160.000000)">
													<path
														d="M299.633777,6519.29231 L299.633777,6519.29231 C299.228878,6518.90256 298.573377,6518.90256 298.169513,6519.29231 L289.606572,6527.55587 C288.797809,6528.33636 288.797809,6529.60253 289.606572,6530.38301 L298.231646,6538.70754 C298.632403,6539.09329 299.27962,6539.09828 299.685554,6538.71753 L299.685554,6538.71753 C300.100809,6538.32879 300.104951,6537.68821 299.696945,6537.29347 L291.802968,6529.67648 C291.398069,6529.28574 291.398069,6528.65315 291.802968,6528.26241 L299.633777,6520.70538 C300.038676,6520.31563 300.038676,6519.68305 299.633777,6519.29231"
														id="arrow_left-[#335]">
													</path>
												</g>
											</g>
										</g>
									</svg></span>
								<span class="sr-only">Предыдущий</span> <!-- для программ чтения с экрана -->
							</a>
							<a class="right carousel-control" href="#carousel-recommend" role="button" data-slide="next">
								<span" aria-hidden="true">
									<svg viewBox="-4.5 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink">
										<g id="Page-1" stroke-width="1" fill-rule="evenodd">
											<g id="Dribbble-Light-Preview" transform="translate(-305.000000, -6679.000000)">
												<g id="icons" transform="translate(56.000000, 160.000000)">
													<path
														d="M249.365851,6538.70769 L249.365851,6538.70769 C249.770764,6539.09744 250.426289,6539.09744 250.830166,6538.70769 L259.393407,6530.44413 C260.202198,6529.66364 260.202198,6528.39747 259.393407,6527.61699 L250.768031,6519.29246 C250.367261,6518.90671 249.720021,6518.90172 249.314072,6519.28247 L249.314072,6519.28247 C248.899839,6519.67121 248.894661,6520.31179 249.302681,6520.70653 L257.196934,6528.32352 C257.601847,6528.71426 257.601847,6529.34685 257.196934,6529.73759 L249.365851,6537.29462 C248.960938,6537.68437 248.960938,6538.31795 249.365851,6538.70769"
														id="arrow_right-[#336]">

													</path>
												</g>
											</g>
										</g>
									</svg>
									</span>
									<span class="sr-only">Следующий</span> <!-- для программ чтения с экрана -->
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>