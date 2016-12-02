<div class="chats">
    <!-- IMPORT partials/breadcrumbs.tpl -->
    <div class="card chat-card" id="messages-main">
        <div class="ms-menu">
            <div class="listview lv-message hidden-xs">
                <div class="lv-header-alt clearfix">
                    <div class="new-chat pull-left" title="New Chat">
                        <i class="fa fa-comments-o"></i>
                    </div>
                </div>
            </div>
            <ul component="chat/recent" class="listview lv-user chats-list">
                <!-- BEGIN rooms -->
                <!-- IMPORT partials/chats/recent_room.tpl -->
                <!-- END rooms -->
            </ul>
        </div>
         <div class="chat-search-menu">
            <div class="listview lv-message">
                <div class="lv-header-alt clearfix">
                    <div id="chat-search-menu-trigger">
                        <div class="line-wrap">
                            <div class="line top"></div>
                            <div class="line center"></div>
                            <div class="line bottom"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
     			<div class="fg-line">
     				<input class="form-control" component="chat/search" type="text" placeholder="[[users:enter_username]]"/>
     			</div>
     		</div>
            <ul component="chat/search/list" class="chat-search-list">
    			
    		</ul>
    	</div>
    
        <!-- IF roomId -->
        <div component="chat/messages" class="ms-body expanded-chat" data-roomid="{roomId}">
            <div class="listview lv-message">
                <div class="lv-header-alt clearfix">
                    <div id="ms-menu-trigger">
                        <div class="line-wrap">
                            <div class="line top"></div>
                            <div class="line center"></div>
                            <div class="line bottom"></div>
                        </div>
                    </div>
    
                    <div class="lvh-label hidden-xs">
                        <div class="users-tag-container">
     				        <input class="users-tag-input form-control" type="text" placeholder="enter users here" tabindex="4"/>
     			        </div>
                    </div>
                    
                    <div class="lv-actions actions">
                        <div data-action="pop-out">
                            <i class="fa fa-compress"></i>
                        </div>
                    </div>
                </div>
                
                <ul class="lv-body chat-content">
                    <!-- IMPORT partials/chats/messages.tpl -->
                </ul>
                
                <div class="lv-footer ms-reply">
                    <textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="chat-input" <!-- IF !canReply -->readonly<!-- ENDIF !canReply -->></textarea>
                    <button data-action="send" <!-- IF !canReply -->disabled<!-- ENDIF !canReply -->><i class="fa fa-send"></i></button>
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
        <!-- ENDIF roomId -->
    </div>
</div>