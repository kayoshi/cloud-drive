$(document).ready(function() {
	$('table tr').bind('click', function(event) {
		if (1 == event.target.nodeType) {
			if ('INPUT' != event.target.nodeName.toUpperCase()) {
				$(this).find('input[type=checkbox]').each(function() {
					$(this).attr('checked', !this.checked);
					$(this).parent().parent().parent().parent().css('background-color', (!this.checked)?'white':'#ebf7ff');
				})
			} else
				stopPropagation();
		}
	});
});