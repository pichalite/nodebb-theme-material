<!-- BEGIN groups -->
<div class="col-lg-4 col-md-6 col-sm-12" data-slug="{groups.slug}">
    <div class="card">
        <div class="card-header ch-alt">
            <div>{groups.displayName}</div>
            <small>{groups.description}</small>
        </div>
        <div class="card-body group-cover list-cover" style="<!-- IF groups.cover:url -->background-image: url({groups.cover:url});<!-- ENDIF groups.cover:url -->">
        </div>
        <div class="card-body card-padding">
            <ul class="members">
                <!-- BEGIN members -->
                <li>
                    <a href="{config.relative_path}/user/{groups.members.userslug}">
                        <img src="{groups.members.picture}" title="{groups.members.userslug}" />
                    </a>
                </li>
                <!-- END members -->
                <!-- IF groups.truncated -->
                <li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
                <!-- ENDIF groups.truncated -->
            </ul>
        </div>
        <div class="card-footer">
            {groups.memberCount} member(s)
        </div>
    </div>
</div>
<!-- END groups -->