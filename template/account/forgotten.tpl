<?php echo $header; ?>
<div class="main-content">
	<div class="container">
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><?php echo $error_warning; ?></div>
		<?php } ?>
		<div class="row fogotten-row"><?php echo $column_left; ?>
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
				<h1><?php echo $heading_title; ?></h1>
				<p><?php echo $text_email; ?></p>
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
					<fieldset>
						<legend><?php echo $text_your_email; ?></legend>
						<div class="form-group required">
							<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="login-input form-control" />
						</div>
					</fieldset>
					<div class="buttons clearfix">
						<div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-back"><?php echo $button_back; ?></a></div>
						<div>
							<input type="submit" value="<?php echo $button_continue; ?>" class="btn mybtn" />
						</div>
					</div>
				</form>
				<?php echo $content_bottom; ?></div>
			<?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>