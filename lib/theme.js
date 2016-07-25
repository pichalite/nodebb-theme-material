(function(module) {
	"use strict";
	
	var theme = {};
	var	meta = module.parent.require('./meta');
	var SocketAdmin = module.parent.require('./socket.io/admin');
	var fs = require('fs');
	var path = require('path');
	var nconf = module.parent.require('nconf');

	theme.init = function(params, callback) {
		
		SocketAdmin.material = {
			setSkin: function(socket, data, callback) {
				theme.modifyLessFile(data.skin, callback);
			}
		};

		params.router.get('/admin/plugins/material', params.middleware.admin.buildHeader, renderAdmin);
		params.router.get('/api/admin/plugins/material', renderAdmin);

		callback();
	};

	theme.addAdminNavigation = function(header, callback) {
		header.plugins.push({
			route: '/plugins/material',
			icon: 'fa-paint-brush',
			name: 'Material Design Theme'
		});

		callback(null, header);
	};

	theme.getConfig = function(config, callback) {
		
		meta.settings.get('material', function(err, settings) {
			config.menuInHeader = settings.menuInHeader === 'on';
			config.removeCategoriesAnimation = settings.removeCategoriesAnimation === 'on';
			config.subCategoriesAsCards = settings.subCategoriesAsCards === 'on';
			config.categoriesAsList = settings.categoriesAsList === 'on';
			config.listSubcategories = settings.listSubcategories === 'on';
		});
		
		callback(false, config);
	};
	
	theme.modifyLessVar = function(params, callback) {
		
		meta.settings.get('material', function(err, settings) {
			var selectedSkin = settings.skinOption || 'default';
			theme.modifyLessFile(selectedSkin, callback);
		});
	};
	
	theme.modifyLessFile = function(skin, callback) {
		var lessFilePath = path.join(nconf.get('base_dir'), 'node_modules/nodebb-theme-material/less/variables.less');
		var selectedSkin = skin || 'default';
		
		fs.readFile(lessFilePath, function(err, data) {
			if (err) {
				callback(err);
			} else {
				var less = data.toString();
				var textToReplace = less.substr(0, less.indexOf(';'));
				
				less = less.replace(textToReplace, '@theme: ' + selectedSkin);
				
				fs.writeFile(lessFilePath, less, function(err) {
					if (err) {
						callback(err);
					}			
				});
			}
			
			callback(null);
		});
	};

	function renderAdmin(req, res, next) {
		res.render('admin/plugins/material', {});
	}

	module.exports = theme;

}(module));