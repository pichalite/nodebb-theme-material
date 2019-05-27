<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row">
	  <div class="col-md-12">
			<div class="card">
				<div class="card-header ch-alt">
					<h4>{title}</h4>
				</div>
				<div class="card-body card-padding">
					<!-- IF privateUploads -->
					<div class="alert alert-info text-center">[[uploads:private-uploads-info]]</div>
					<!-- ELSE -->
					<div class="alert alert-info text-center">[[uploads:public-uploads-info]]</div>
					<!-- ENDIF privateUploads -->

					<!-- IF !uploads.length -->
					<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
					<!-- ELSE -->
					<div class="col-xs-12">
            <table class="table table-striped">
							<thead>
								<tr>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<!-- BEGIN uploads -->
								<tr data-name="{uploads.name}">
									<td>
										<a href="{config.relative_path}{uploads.url}">{uploads.url}</a>
									</td>
									<td>
										<div class="btn-group ">
											<button class="btn btn-danger btn-xs" data-action="delete"><i class="fa fa-trash"></i></button>
										</div>
									</td>
								</tr>
								<!-- END uploads -->
							</tbody>
            </table>
            <!-- IMPORT partials/paginator.tpl -->
          </div>
          <!-- ENDIF !uploads.length -->
        </div>
	    </div>
	  </div>
	</div>
</div>