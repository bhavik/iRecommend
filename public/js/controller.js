
function RecommendCtrl($scope, Rec,Cat,RecbyCategory,$http,Recbyhttp) {
	$scope.recs = Rec.query();
	$scope.cats = Cat.query();
	$scope.recbyCats = RecbyCategory.query();
	$scope.recsCatbyhttp = Recbyhttp.recByHttp();
	$scope.categoryName = "Movies";
	

/*
	$http({method:'GET', url:'recommendation/findByCatId.json', data:'catId=1'}).
	success(function(data, status, headers, config){
		$scope.recsCatbyhttp = data;
	}).
	error(function(data, status, headers, config){
		alert('error');
	})
	
*/

}

