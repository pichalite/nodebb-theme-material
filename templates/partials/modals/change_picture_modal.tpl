<div class="list-group media">
	<button type="button" class="list-group-item" data-type="default">
		<div class="media-left">
			<!-- IF defaultAvatar -->
			<img class="media-object" src="{defaultAvatar}"  />
			<!-- ELSE -->
			<div class="user-icon media-object" style="background-color: {icon.bgColor};">{icon.text}</div>
			<!-- ENDIF defaultAvatar -->
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

<div class="btn-group btn-group-justified" role="group">
	<!-- IF allowProfileImageUploads -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="upload">[[user:upload_new_picture]]</button>
	</div>
	<!-- ENDIF allowProfileImageUploads -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="upload-url">[[user:upload_new_picture_from_url]]</button>
	</div>
	<!-- IF uploaded -->
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default" data-action="remove-uploaded">[[user:remove_uploaded_picture]]</button>
	</div>
	<!-- ENDIF uploaded -->
</div>