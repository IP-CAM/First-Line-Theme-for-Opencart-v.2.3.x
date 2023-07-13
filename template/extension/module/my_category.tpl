<section class="category">
	<div class="container">
		<h4><?=$heading_title?></h4>
		<ul class="row category-list">
			<?php foreach ($categories as $category): ?>
			<li class="col-md-2 col-sm-4 col-xs-6 category-item">
				<a href="<?=$category['href']?>" class="category-item-inner">
					<?php if($category['thumb']): ?>
					<img src="<?=$category['thumb']?>" alt="<?=$category['name']?>">
					<? endif; ?>
					<h5 class="category-title"><?=$category['name']?></h5>
				</a>
			</li>
			<?php endforeach; ?>
		</ul>
	</div>
</section>