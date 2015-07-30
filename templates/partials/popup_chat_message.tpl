<div class="chat-message lv-item media<!-- IF messages.self --> right<!-- ENDIF messages.self -->" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
    <div class="<!-- IF messages.self -->pull-right<!-- ELSE -->pull-left<!-- ENDIF messages.self -->">
        <img src="{messages.fromUser.picture}" alt="{messages.fromUser.username}" title="{messages.fromUser.username}">
    </div>
    <div class="media-body">
        <div class="chat-item">
            {messages.content}
        </div>
        <small class="timeago" title="{messages.timestampISO}"></small>
    </div>
</div>