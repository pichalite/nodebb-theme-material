<div class="outgoing">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="well">
		<h3>[[notifications:outgoing_link_message, {title}]]</h3>
		<p>
			<a href="{outgoing}" rel="nofollow" class="btn btn-primary btn-lg">[[notifications:continue_to, {outgoing}]]</a>
			<a id="return-btn" href="#" class="btn btn-lg btn-warning">[[notifications:return_to, {title}]]</a>
		</p>
	</div>
</div>

<script>
	$('#return-btn').on('click', function() {
		history.back();
		return false;
	});
</script>
