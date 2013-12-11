$(document).ready(function(){
	$('#avatarUpload').click(function(){
		$('#avatarFile').click();
	});

	$('#myFileButton').click(function(){
		$('#myWeiboFile').click();
	});

	$('#myWeiboFile').change(function () {
		var s = "<div class=\"myAlert uk-alert\">" + $(this).val() + "</div>"
		$('#myFileButton').replaceWith(s);
		$('#imgUploadFormSubmit').attr('disabled', false);
		$('#publishSubmit').hide();
	});

	$('#imgUploadForm').ajaxForm({
		url: 'http://up.qiniu.com/', 
		type: 'post',
		success: function(data)
		{
			console.log(data.hash);
			var imgSrc = "http://datescript.u.qiniudn.com/" + data.hash;
			$('.myAlert').replaceWith("<a class=\"uk-thumbnail\"><img src="+ imgSrc +" width=\"100px\"></a>");
			$('#weiboImgSrc').attr('value', imgSrc)
			$('#imgUploadFormSubmit').hide();
			$('#publishSubmit').show();
		}
	});
});

		