<footer class="footer">
	<div class="footer-menu">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="footer-item">
						<h5 class="footer-list-title"><?=$text_information?></h5>
						<ul class="footer-list">
						<?php foreach($informations as $information): ?>
							<li><a href="<?=$information['href']?>"><?=$information['title']?></a></li>
						<?php endforeach; ?>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="footer-item">
						<h5 class="footer-list-title"><?=$text_service?></h5>
						<ul class="footer-list">
							<li><a href="<?=$contact?>"><?=$text_contact?></a></li>
          		<li><a href="<?=$return?>"><?=$text_return?></a></li>
        		  <li><a href="<?=$sitemap?>"><?=$text_sitemap?></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
				<div class="col-md-3 col-xs-6">
					<div class="footer-item">
						<h5 class="footer-list-title"><?=$text_extra?></h5>
						<ul class="footer-list">
							<li><a href="<?=$manufacturer?>"><?=$text_manufacturer?></a></li>
							<li><a href="<?=$special?>"><?=$text_special?></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="footer-item">
						<h5 class="footer-list-title"><?=$text_account?></h5>
						<ul class="footer-list">
							<li><a href="<?=$account?>"><?=$text_account?></a></li>
							<li><a href="<?=$order?>"><?=$text_order?></a></li>
							<li><a href="<?=$wishlist?>"><?=$text_wishlist?></a></li>
							<li><a href="<?=$newsletter?>"><?=$text_newsletter?></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="container">
			&#169; First Line
		</div>
	</div>
</footer>
</body>

</html>