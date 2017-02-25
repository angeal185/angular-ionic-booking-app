<ion-view>
<link href="css/payment.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-light">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ng-click="goBack()"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content scroll="false" class="stable-bg stable payment-form-main">
	<div class="text-center padding-20 light-bg">
		<h2>$ 9999.00</h2>
		<span>Transaction ID : 0000000000</span>
	</div>
	<div class="padding-20">
	<div>Pay by <span class="dark">NetBanking</span></div>
	<div class="list no-margin" ng-click="openModalSelectBank()">
		<div class="item item-icon-right">
		<span>Select your bank</span>
		<i class="icon ion-android-arrow-dropdown"></i>
		</div>
	</div>
	<div class="padding-vertical"><span class="dark">Note</span> : You will be redirected to your bank to veryfy your account.</div>
	<button class="button button-full no-margin button-stable" ui-sref="app.bookingPaymentSuccess">
		<h4 class="light">Pay Now</h4>
	</button>
	<div class="text-center padding-top">Or, Go Back to <u>www.website.com</u></div>
	</div>
</ion-content>
</ion-view>