<li class="lv-item media<!-- IF messages.self --> right<!-- ENDIF messages.self -->">
    <div class="lv-avatar <!-- IF messages.self -->pull-right<!-- ELSE -->pull-left<!-- ENDIF messages.self -->">
        <!-- IF messages.fromUser.picture -->
        <img src="{messages.fromUser.picture}">
        <!-- ELSE -->
        <div class="user-icon" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
        <!-- ENDIF messages.fromUser.picture -->
    </div>
    <div class="media-body">
        <div class="ms-item">
            {messages.content}
        </div>
        <small class="ms-date"><i class="fa fa-clock-o"></i> <span class="timeago" title="{messages.timestampISO}"></span></small>
    </div>
</li>