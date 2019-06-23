<div class="row">
	<div class="col-sm-2 col-xs-12 settings-header">Theme Settings</div>
	<div class="col-sm-10 col-xs-12">	
		<form role="form" class="material-settings">

			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="menuInHeader" name="menuInHeader">
					<span class="mdl-switch__label"><strong>Display menu in header</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="categoriesAsList" name="categoriesAsList">
					<span class="mdl-switch__label"><strong>Display categories as a list</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="listSubcategories" name="listSubcategories">
					<span class="mdl-switch__label"><strong>Display sub categories on categories page (only applies if above option is enabled)</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="removeCategoriesAnimation" name="removeCategoriesAnimation">
					<span class="mdl-switch__label"><strong>Remove animation on categories page (cards only)</strong></span>
				</label>
			</div>
			
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="subCategoriesAsCards" name="subCategoriesAsCards">
					<span class="mdl-switch__label"><strong>Display subcategories as cards on category page</strong></span>
				</label>
			</div>
			
			<div class="form-group">
				<label for="skinOption">Select a skin</label>
				<select id="skinOption" name="skinOption" class="form-control">
					<option value="default">Default</option>
					<option value="dark">Dark</option>
				</select>	
			</div>
			
		</form>
	</div>
</div>
	
<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
  <i class="material-icons">save</i>
</button>