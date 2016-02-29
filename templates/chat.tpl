<div id="chat-modal" class="chat-modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="modal-dialog">
		<div class="modal-content listview lv-message">
			<div class="modal-header">
				<button id="chat-close-btn" type="button" class="close" data-dismiss="modal"><span aria-hidden="true"><i class="fa fa-close"></i></span></button>
				<button type="button" class="close" data-action="maximize"><span aria-hidden="true"><i class="fa fa-expand"></i></span><span class="sr-only">[[modules:chat.maximize]]</span></button>
 				<div class="users-tag-container inline-block">
 					<input class="users-tag-input form-control" type="text" placeholder="enter users here" tabindex="4"/>
 				</div>
			</div>
			<div class="modal-body">
				<span class="since-bar">
				<a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
				<ul class="chat-content lv-body" component="chat/messages">
					
				</ul>

				<div class="chat-footer input-group">
					<div class="fg-line">
						<textarea component="chat/input" id="chat-message-input" rows="1" placeholder="[[modules:chat.placeholder]]" name="chat-message" class="form-control"></textarea>
					</div>
					<div class="input-group-btn">
						<button id="chat-message-send-btn" class="btn btn-link btn-primary" href="#" type="button">[[modules:chat.send]]</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>