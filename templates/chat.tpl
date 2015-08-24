<div id="chat-modal" class="chat-modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content listview lv-message">
			<div class="modal-header">
				<button type="button" class="close hidden-xs" data-action="maximize"><span aria-hidden="true"><i class="fa fa-expand"></i></span><span class="sr-only">[[modules:chat.maximize]]</span></button>
				<h4><i component="user/status" class="fa fa-circle status offline" title="[[global:offline]]"></i>
					[[modules:chat.chatting_with]] 
					<span class="user-typing hide"><i class="fa fa-keyboard-o fa-fw"></i></span>
				</h4>
			</div>
			<div class="modal-body">
				<span class="since-bar">
				<a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
				<ul class="chat-content" class="lv-body">
					
				</ul>

				<div class="chat-footer input-group">
					<div class="fg-line">
						<textarea component="chat/input" id="chat-message-input" rows="1" placeholder="[[modules:chat.placeholder]]" name="chat-message" class="form-control"></textarea>
					</div>
					<div class="input-group-btn">
						<button id="chat-message-send-btn" class="btn btn-link btn-primary" href="#" type="button">[[modules:chat.send]]</button>
						<button id="chat-close-btn" class="btn btn-link btn-warning" data-dismiss="modal" aria-hidden="true">[[global:close]]</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>