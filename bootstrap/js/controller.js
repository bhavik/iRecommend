
function RecommendCtrl($scope, Rec) {
	$scope.recs = Rec.query();
}
