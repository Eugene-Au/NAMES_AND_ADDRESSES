var app = angular.module('myApp', ['ui.bootstrap']);

app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    }
});

app.filter('checkmark', function() {
  return function(input) {    
      return (input == 1) ? '\u2713' : '\u2718';
  };
});

app.controller('customersCrtl', function ($scope, $http, $timeout) {
    $http.get('ajax/getCustomers.php').success(function(data){
        $scope.list = data;
        $scope.currentPage = 1; //current page
        $scope.entryLimit = 5; //max no of items to display in a page
        $scope.filteredItems = $scope.list.length; //Initially for no filter  
        $scope.totalItems = $scope.list.length;
        $scope.search = '';
        $scope.preferred = false;
        $scope.hide_total_addresses = true;
        $scope.selected_full = true;
    });
    
    $scope.setPage = function(pageNo) {
        $scope.currentPage = pageNo;
    };
    
    $scope.filter = function() {
        $timeout(function() { 
            $scope.filteredItems = $scope.filtered.length;
        }, 10);
    };
    
    $scope.sort_by = function(predicate) {
        $scope.predicate = predicate;
        $scope.reverse = !$scope.reverse;
    };
    
    $scope.show_preferred = function(predicate) {        
        $scope.preferred = predicate;
        if ( $scope.preferred === 'preferred' ) {
            $scope.hide_total_addresses = false;
            $scope.selected_full = false;
        } else if ( $scope.preferred === 'full') {
            $scope.hide_total_addresses = true;        
            $scope.selected_full = true;
        }
        
    };
    
    $scope.criteriaMatch = function(item) {
        
        function toString (val) {
            return (typeof val === 'string') ? val : '';
        }        
        
        var search = toString($scope.search).toLowerCase();
        var name = toString(item.name).toLowerCase();
        var address = toString(item.address).toLowerCase();
        
        return (    (name.indexOf(search) != -1 ) ||
                            (address.indexOf(search) != -1 ) 
                    )                    
                    && ( $scope.preferred === 'preferred' ? item.preferred == 1 : true) 
                ;              
    };
    
});
