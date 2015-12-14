<li component="chat/message" class="lv-item media<!-- IF messages.self --> right<!-- ENDIF messages.self -->" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
    <div class="lv-avatar <!-- IF messages.self -->pull-right<!-- ELSE -->pull-left<!-- ENDIF messages.self -->">
        <!-- IF messages.newSet -->
        <!-- IF messages.fromUser.picture -->
        <img src="{messages.fromUser.picture}">
        <!-- ELSE -->
        <div class="user-icon" style="background-color: {messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
        <!-- ENDIF messages.fromUser.picture -->
        <!-- ENDIF messages.newSet -->
    </div>
    <!-- IF messages.newSet -->
    <div><small class="ms-date"><i class="fa fa-clock-o"></i> <span class="timeago" title="{messages.timestampISO}"></span></small></div>
    <!-- ENDIF messages.newSet -->
    <div class="media-body">
        <div component="chat/message/body" class="ms-item">
            <!-- IF messages.edited -->
            <small class="text-muted chat-edit" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></small>
            <!-- ENDIF messages.edited -->
            <!-- IF messages.self -->
            <div class="chat-controls">
                <button class="btn btn-xs btn-link" data-action="edit"><i class="fa fa-pencil"></i></button>
                <button class="btn btn-xs btn-link" data-action="delete"><i class="fa fa-times"></i></button>
            </div>
            <!-- ENDIF messages.self -->
            {messages.content}
        </div>
    </div>
</li>