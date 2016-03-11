(function(module) {
	"use strict";
	
	var theme = {};
	var	meta = module.parent.require('./meta');


	theme.init = function(params, callback) {
		var app = params.router,
			middleware = params.middleware;

		app.get('/admin/plugins/material', middleware.admin.buildHeader, renderAdmin);
		app.get('/api/admin/plugins/material', renderAdmin);

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
		config.menuInHeader = !!parseInt(meta.config.menuInHeader, 10);
		config.removeCategoriesAnimation = !!parseInt(meta.config.removeCategoriesAnimation, 10);
		config.subCategoriesAsCards = !!parseInt(meta.config.subCategoriesAsCards, 10);
		config.categoriesAsList = !!parseInt(meta.config.categoriesAsList, 10);
		config.listSubcategories = !!parseInt(meta.config.listSubcategories, 10);
		callback(false, config);
	};

	function renderAdmin(req, res, next) {
		res.render('admin/plugins/material', {});
	}

	module.exports = theme;

}(module));