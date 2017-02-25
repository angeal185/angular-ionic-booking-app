angular.module('starter', ['ionic', 'starter.controllers'])

.run(function($rootScope, $ionicPlatform, $ionicHistory) {
  $ionicPlatform.ready(function() {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
      cordova.plugins.Keyboard.disableScroll(true);
    }
    if (window.StatusBar) {
      StatusBar.styleDefault();
    }
  });
  $rootScope.reload = function(){ location.reload() }
  $rootScope.goBack = function(){ $ionicHistory.goBack() }
})

.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider

    .state('app', {
    url: '/app',
    abstract: true,
    templateUrl: 'templates/menu/index.tpl',
	controller: 'MenuCtrl'
  })

  .state('app.faq', {
    url: '/faq',
    views: {
      'menuContent': {
        templateUrl: 'templates/menu/faq.tpl'
      }
    }
  })

  .state('app.feedback', {
    url: '/feedback',
    views: {
      'menuContent': {
        templateUrl: 'templates/menu/feedback.tpl'
      }
    }
  })

  .state('app.paymentOption', {
    url: '/option/payment',
    views: {
      'menuContent': {
        templateUrl: 'templates/menu/option-payment.tpl'
      }
    }
  })
 
  .state('app.home', {
	cache: false,
    url: '/home',
    views: {
      'menuContent': {
        templateUrl: 'templates/home/index.tpl',
		controller: 'HomeCtrl'
      }
    }
  })
  
  .state('app.chat', {
    url: '/chat',
    views: {
      'menuContent': {
        templateUrl: 'templates/chat/index.tpl'
      }
    }
  })
  
  .state('app.chatDetail', {
    url: '/chat/detail',
    views: {
      'menuContent': {
        templateUrl: 'templates/chat/detail.tpl',
		controller: 'chatDetailCtrl'
      }
    }
  })

  .state('app.sign', {
    url: '/sign',
    views: {
      'menuContent': {
        templateUrl: 'templates/sign/index.tpl',
		controller: 'SignCtrl'
      }
    }
  })


  .state('app.signForgot', {
    url: '/sign/forgot',
    views: {
      'menuContent': {
        templateUrl: 'templates/sign/forgot.tpl',
		controller: 'SignCtrl'
      }
    }
  })

  .state('app.signup', {
    url: '/sign/signup',
    views: {
      'menuContent': {
        templateUrl: 'templates/sign/signup.tpl',
		controller: 'SignCtrl'
      }
    }
  })

  .state('app.booking', {
    url: '/booking',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/index.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingDetailPending', {
    url: '/booking/detail',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/detail-pending.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingDetailCanceled', {
    url: '/booking/detail/canceled',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/detail-canceled.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingConfirmed', {
    url: '/booking/detail/confirmed',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/confirmed.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingDirection', {
    url: '/booking/detail/direction',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/direction.tpl',
      }
    }
  })

  .state('app.bookingPaymentNet', {
	cache: false,
    url: '/booking/detail/payment/net',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/payment-net.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingPaymentCard', {
	cache: false,
    url: '/booking/detail/payment/card',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/payment-card.tpl',
		controller: 'BookingCtrl'
      }
    }
  })

  .state('app.bookingPaymentSuccess', {
    url: '/booking/detail/payment/success',
    views: {
      'menuContent': {
        templateUrl: 'templates/booking/success.tpl',
      }
    }
  })

  .state('app.search', {
    url: '/search',
    views: {
      'menuContent': {
        templateUrl: 'templates/search/index.tpl',
		controller: 'searchCtrl'
      }
    }
  })

  .state('app.searchFilter', {
    url: '/search/filter',
    views: {
      'menuContent': {
        templateUrl: 'templates/search/filter.tpl',
		controller: 'searchCtrl'
      }
    }
  })

  .state('app.detail', {
    url: '/detail',
    views: {
      'menuContent': {
        templateUrl: 'templates/detail/index.tpl',
		controller: 'detailCtrl'
      }
    }
  })

  .state('app.detailPolicies', {
    url: '/detail/policies',
    views: {
      'menuContent': {
        templateUrl: 'templates/detail/policies.tpl',
      }
    }
  })

;

  // if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise('/app/home');
})

.filter('range', function(){
    return function(n) {
      var res = [];
      for (var i = 0; i < n; i++) {
        res.push(i);
      }
      return res;
    };
})

.config(function($ionicConfigProvider){
	$ionicConfigProvider.backButton.text('').previousTitleText(false); //disable backButton text
	$ionicConfigProvider.tabs.position('top');
})

;
