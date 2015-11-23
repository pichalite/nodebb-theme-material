<div class="list-group media">
	<button type="button" class="list-group-item" data-type="default">
		<div class="media-left">
			<div class="user-icon media-object"></div>
		</div>
		<div class="media-body">
			<h4 class="media-heading">[[user:default_picture]]</h4>
		</div>
	</button>
	<!-- BEGIN pictures -->
	<button type="button" class="list-group-item" data-type="{pictures.type}">
		<div class="media-left">
			<img class="media-object" src="{pictures.url}" title="{pictures.text}" />
		</div>
		<div class="media-body">
			<h4 class="media-heading">{pictures.text}</h4>
		</div>
	</button>
	<!-- END pictures -->
</div>

<div class="btn-group-justified" role="group">

	<!-- IF config.allowProfileImageUploads -->
	<a id="uploadPictureBtn" href="#" data-action="upload">[[user:upload_new_picture]]</a>
	<!-- ENDIF config.allowProfileImageUploads -->
	<!-- IF config.hasImageUploadPlugin -->
	<a id="uploadFromUrlBtn" href="#" data-action="upload-url">[[user:upload_new_picture_from_url]]</a><br/>
	<!-- ENDIF config.hasImageUploadPlugin -->
	<!-- IF uploaded -->
	<a id="removeUploadedPictureBtn" href="#" data-action="remove-uploaded">[[user:remove_uploaded_picture]]</a>
	<!-- ENDIF uploaded -->

</div>