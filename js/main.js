$(document).ready(function() {
	$('.my_minus').click(function () {
	var $input = $(this).parent().find('.quant');
	var count = parseInt($input.val()) - 1;
	count = count < 1 ? 1 : count;
	$input.val(count);
	$input.change();
	return false;
	});
	$('.my_plus').click(function () {
	var $input = $(this).parent().find('.quant');
	$input.val(parseInt($input.val()) + 1);
	$input.change();
	return false;
	});

	setTimeout(()=>$(".alert").remove(), 4000);
});