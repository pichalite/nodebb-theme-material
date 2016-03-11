<div class="row">
	<div class="col-sm-2 col-xs-12 settings-header">Theme Settings</div>
	<div class="col-sm-10 col-xs-12">	
		<form>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" data-field="menuInHeader">
					<span class="mdl-switch__label"><strong>Display menu in header</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" data-field="categoriesAsList">
					<span class="mdl-switch__label"><strong>Display categories as a list</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" data-field="listSubcategories">
					<span class="mdl-switch__label"><strong>Display sub categories on categories page (only applies if above option is enabled)</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" data-field="removeCategoriesAnimation">
					<span class="mdl-switch__label"><strong>Remove animation on categories page (cards only)</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" data-field="subCategoriesAsCards">
					<span class="mdl-switch__label"><strong>Display subcategories as cards on category page</strong></span>
				</label>
			</div>

		</form>
	</div>
</div>
	
<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
    <i class="material-icons">save</i>
</button>

<script>
	require(['admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>
