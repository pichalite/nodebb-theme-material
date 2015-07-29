	</div><!--END container -->

	<div class="hide tpl-500">
	<!-- IMPORT 500.tpl -->
	</div>
	<!-- IMPORT partials/modals/upload_picture_modal.tpl -->

	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div class="popup-chat hidden">
		<div class="popup-chat-header">
			Chat Box
			<div class="pull-right">
				<a href="#" class="popup-chat-minimize"><i class="fa fa-chevron-down"></i></a> 
				<a href="#" class="popup-chat-close"><i class="fa fa-times"></i></a>
			</div>
		</div>
		<div class="popup-chat-content">
			<ul class="nav nav-tabs">
			</ul>
			<div class="tab-content">
			</div>
			<div class="popup-chat-footer fg-line">
				<textarea id="chat-message-input" rows="1" placeholder="Type message and press enter" name="chat-message" class="form-control"></textarea>
			</div>
		</div>
	</div>

	<div class="alert-window alert-left-top"></div>
	<div class="alert-window alert-left-bottom"></div>
	<div class="alert-window alert-right-top"></div>
	<div class="alert-window alert-right-bottom"></div>

	<script>
		require(['forum/footer']);
	</script>

</body>
</html>