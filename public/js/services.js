/* services */

var app = angular.module('recommendServices', ['ngResource']);
app.factory('Rec', function($resource) {
	var data = $resource('recommendation/index.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('Books', function($resource) {
	var data = $resource('books/index.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('Cat', function($resource) {
	var data = $resource('recommendation/getCategories.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('RecbyCategory', function($resource){
	var data = $resource('recommendation/findByCatId.json', {},{
		query: {method:'GET', params:{catId:'1'}, isArray:true}
	});
	return data;
});

app.factory('RecbyId', function($resource){

	var data = $resource('recommendation/findById.json', {},{
		query: {method:'GET', params:{id: '@recId'}, isArray:true}
	});

	return data;
});


app.factory('Books', function($resource){
	var data = $resource('books/index.json', {},{
		query: {method:'GET', params:{catId:'1'}, isArray:true}
	});
	return data;
});


app.factory('Recbyhttp', function($http){
 var ret =  {
	recByHttp: function() {
		$http({method:'GET', url:'recommendation/findByCatId.json'}).
		success(function(data, status, headers, config){
			return  data;
		}).
		error(function(data, status, headers, config){
		});
}
};
return ret;

});

