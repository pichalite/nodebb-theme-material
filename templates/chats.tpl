<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="card chat-card" id="messages-main">
    <div class="ms-menu">
        <ul component="chat/recent" class="listview lv-user chats-list">
            <!-- BEGIN chats -->
            <!-- IMPORT partials/chat_contact.tpl -->
            <!-- END chats -->
        </ul>
    </div>

    <!-- IF meta -->
    <div component="chat/messages" class="ms-body expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
        <div class="listview lv-message">
            <div class="lv-header-alt clearfix">
                <div id="ms-menu-trigger" class="">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </div>

                <div class="lvh-label hidden-xs">
                    <span component="chat/title" class="c-black">{meta.username}</span>
                </div>
                
                <div class="lv-actions actions">
                    <div data-action="pop-out">
                        <i class="fa fa-compress"></i>
                    </div>
                </div>
            </div>
            
            <ul class="lv-body chat-content">
            <!-- IMPORT partials/chat_messages.tpl -->
            </ul>
            
            <div class="lv-footer ms-reply">
                <textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="chat-input"></textarea>
                
                <button data-action="send"><i class="fa fa-send"></i></button>
            </div>
        </div>
    </div>
    <!-- ELSE -->
    <div class="ms-body expanded-chat">
        <div class="listview lv-message">
            <div class="lv-header-alt clearfix">
                <div id="ms-menu-trigger" class="">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </div>
            </div>
            <ul class="lv-body chat-content">
            <div class="alert alert-info">
                [[modules:chat.no-messages]]
            </div>
            </ul>
        </div>
    </div>
    <!-- ENDIF meta -->

</div>