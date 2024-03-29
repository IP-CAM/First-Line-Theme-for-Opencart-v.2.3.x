<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
				<h2><?php echo $text_address_book; ?></h2>
				<?php if ($addresses) { ?>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<?php foreach ($addresses as $result) { ?>
						<tr>
							<td class="text-left"><?php echo $result['address']; ?></td>
							<td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-back"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn mybtn"><?php echo $button_delete; ?></a></td>
						</tr>
						<?php } ?>
					</table>
				</div>
				<?php } else { ?>
				<p><?php echo $text_empty; ?></p>
				<?php } ?>
				<div class="buttons clearfix">
					<div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-back"><?php echo $button_back; ?></a></div>
					<div class="pull-right"><a href="<?php echo $add; ?>" class="btn mybtn"><?php echo $button_new_address; ?></a></div>
				</div>
				<?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>