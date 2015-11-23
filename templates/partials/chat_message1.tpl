<div class="chat-message lv-item media<!-- IF messages.self --> right<!-- ENDIF messages.self -->" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
    <div class="<!-- IF messages.self -->pull-right<!-- ELSE -->pull-left<!-- ENDIF messages.self -->">
        <a href="{config.relative_path}/user/{messages.fromUser.userslug}"><img src="{messages.fromUser.picture}" alt=""></a>
    </div>
    <div class="media-body">
        <div class="chat-item">
            {messages.content}
        </div>
        <small class="timeago" title="{messages.timestampISO}"></small>
    </div>
</div>