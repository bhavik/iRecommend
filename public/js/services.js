/* services */

var app = angular.module('recommendServices', ['ngResource']);
app.factory('Rec', function($resource) {
	var data = $resource('/recommendations/getAllRecommendations.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('Books', function($resource) {

	var data = $resource('/books/getAllBooks.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('Movies', function($resource) {

	var data = $resource('/movies/getAllMovies.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});


app.factory('Cat', function($resource) {
	var data = $resource('/recommendations/getCategories.json', {}, {
		query: {method:'GET', params:{}, isArray:true}
	});
	return data;
});

app.factory('RecbyCategory', function($resource){
	var data = $resource('/recommendations/findByCatId.json', {},{
		query: {method:'GET', params:{cat_id:'1'}, isArray:true}
	});
	return data;
});

app.factory('RecbyId', function($resource){

	var data = $resource('/recommendations/findById.json', {},{
		query: {method:'GET', params:{id: '@recId'}, isArray:true}
	});

	return data;
});



app.factory('Recbyhttp', function($http){
 var ret =  {
	recByHttp: function() {
		$http({method:'GET', url:'recommendations/findByCatId.json'}).
		success(function(data, status, headers, config){
			return  data;
		}).
		error(function(data, status, headers, config){
		});
}
};
return ret;

});

