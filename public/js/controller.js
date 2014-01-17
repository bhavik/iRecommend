
function RecommendCtrl($rootScope, $scope, Rec,Cat,RecbyCategory,$http,Recbyhttp, Books,RecbyId) {
	//$scope.currencyVal = "";
	$scope.recs = Rec.query();
	$scope.cats = Cat.query();
	//$scope.recbyCats = RecbyCategory.query();
	//$scope.recsCatbyhttp = Recbyhttp.recByHttp();

	//$scope.categoryName = "Movies";
	//$scope.books = Books.query();

	$scope.getDetails = function(recId){
		$rootScope.recDetails = RecbyId.query({id: recId});
	};

}
function BookCtrl($rootScope, $scope, Books,RecbyId,Cat) {
	$scope.books = Books.query();
	$scope.cats = Cat.query();
	$scope.getDetails = function(recId){
		$rootScope.recDetails = RecbyId.query({id: recId});
	};

}

function MovieCtrl($rootScope, $scope, Movies,RecbyId,Cat) {
	$scope.movies = Movies.query();
	$scope.cats = Cat.query();
	$scope.getDetails = function(recId){
		$rootScope.recDetails = RecbyId.query({id: recId});
	};
}


