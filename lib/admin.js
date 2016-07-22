'use strict';
/* globals $, app, socket */

define('admin/plugins/material', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('material', $('.material-settings'));

		$('#save').on('click', function() {
			Settings.save('material', $('.material-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'material-saved',
					title: 'Settings Saved',
					message: 'Material theme settings saved'
				});
			});
		});
		
		
		$('#change-skin').on('click', function() {
			var skin = $('#skin-option').val();
			socket.emit('admin.material.setSkin', {skin: skin}, function(err) {
				if(err) {
					return app.alertError(err.message);
				}
				
				app.alert({
					type: 'success',
					alert_id: 'material-skin-set',
					title: 'Skin set',
					message: 'Click here to restart NodeBB.',
					timeout: 2500,
	                clickfn: function() {
	                    socket.emit('admin.restart');
	                }
				});
			});	
			
		});
	};

	return ACP;
});