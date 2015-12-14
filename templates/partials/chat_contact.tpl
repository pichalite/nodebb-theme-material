<li class="lv-item media<!-- IF ../unread --> unread<!-- ENDIF ../unread -->" data-username="{../username}" data-uid="{../uid}">
    <div class="lv-avatar pull-left">
        <!-- IF ../picture -->
        <img src="{../picture}">
        <!-- ELSE -->
        <div class="user-icon" style="background-color: {../icon:bgColor};">{../icon:text}</div>
        <!-- ENDIF ../picture -->
    </div>
    <span component="user/status" title="[[global:{../status}]]" class="status {../status}"></span>
    <div class="media-body">
        <div class="lv-title">{../username}</div>
        <div class="lv-small">{../teaser.content} </div>
    </div>
</li>