<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<div class="row"><?php echo $column_left; ?>
			<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-md-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-md-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-md-12'; ?>
			<?php } ?>
			<div id="content" class="<?php echo $class; ?> information"><?php echo $content_top; ?>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
				<h1><?php echo $heading_title; ?></h1>
				<?php echo $description; ?><?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>