/* services */

var app = angular.module('recommendServices', ['ngResource']);
app.factory('Rec', function($resource) {
	var data = $resource('recommendation/index.json', {}, {
		query: {method:'GET', params:{}, isArray=true}
	});
	return data;
});
