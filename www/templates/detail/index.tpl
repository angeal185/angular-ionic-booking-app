﻿<ion-view hide-nav-bar="true">
<link href="css/detail.css" rel="stylesheet" type="text/css" />
<ion-header-bar class="detail-header no-border" style="top:0">
	<div class="buttons float-left">
		<button class="button button-icon light ion-ios-arrow-left" ui-sref="app.search"></button>
	</div>
	<div class="buttons float-right">
		<button class="button button-icon light ion-android-share-alt"></button>
	</div>
	<div class="buttons float-right">
		<button class="button button-icon light icon-call"></button>
	</div>
</ion-header-bar>
<ion-content class="detail-main stable-bg">
<ion-slide-box class="detail-slider-box" style="height:180px">
	<ion-slide>
		<img src="img/detail/1.jpg">
	</ion-slide>
	<ion-slide>
		<img src="img/detail/2.jpg">
	</ion-slide>
	<ion-slide>
		<img src="img/detail/3.jpg">
	</ion-slide>
</ion-slide-box>
<div class="card list-service" style="margin-top:-10px">
	<div class="item item-text-wrap"><b>Room 1</b></div>
	<div class="item item-divider item-icon-left">
		<i class="icon icon-bookmark"></i>
		<span>varius dolor mauris duis at congue. Massa ridiculus et sit mauris neque, quae erat adipiscing nec, nec </span>
	</div>
	<div class="item item-text-wrap padding">
	<ion-scroll direction="x" class="list-service-scroll">
	<div class="item-service float-left text-center margin-right" ng-repeat="item in services">
		<i class="icon {{item.icon}}"></i>
		<div>{{item.name}}</div>
	</div>
	</ion-scroll>
	</div>
</div>
<div class="card detail-info">
	<div class="item item-text-wrap">
	<div class="row row-no-padding">
		<div class="col border-right">
			<div class="assertive">MON, MAY 16</div>
			<p class="stable font-13">CHECK IN (12 PM)</p>
		</div>
		<div class="col text-right">
			<div class="assertive">MON, MAY 17</div>
			<p class="stable font-13">CHECK OUT  (11 AM)</p>
		</div>
	</div>
	</div>
	<div class="item item-text-wrap">
		<div class="stable">GUESTS TO STAY IN A ROM</div>
		<div class="row no-padding detail-info-guest">
			<div class="col active">
				<div>1 Guest</div>
				<span>$2399</span>
			</div>
			<div class="col">
				<div>2 Guest</div>
				<span>$2599</span>
			</div>
			<div class="col">
				<div>3 Guest</div>
				<span>$2999</span>
			</div>
		</div>
		<div class="padding-vertical assertive">NEED 2 ROOMS?</div>
		<div ng-click="showPopupPrimaryGuest()">Primary Guest: <span class="balanced">Join</span>
			<i class="float-right padding-horizontal balanced icon ion-edit"></i>
		</div>
	</div>
</div>
<div class="card detail-price">
	<div class="item item-text-wrap">
		<span>Total Price <small>(Including all taxes)</small></span><span class="float-right">$2399</span>
	</div>
	<div class="item item-divider">
		<ion-checkbox class="detail-checkbox" ng-model="detailCoupon">Apply Coupon</ion-checkbox>
		<div class="detail-coupon width-100" ng-show="detailCoupon">
		<div class="item item-input">
			<ion-checkbox class="detail-checkbox float-left" ng-model="detailCoupon"></ion-checkbox>
			<input type="text" placeholder="Coupon">
			<div class="float-right balanced" ng-click="applyCoupon()">APPLY</div>
		</div>
		</div>
		<div class="detail-coupon-success width-100" ng-show="detailCoupon && couponStatus">
			<ion-checkbox class="detail-checkbox float-left" ng-model="detailCoupon"></ion-checkbox>
			<small ng-click="reload()">Coupon Applied (ABC123) <i class="icon ion-edit balanced"></i></small>
			<div class="float-right">-$480</div>
		</div>
		<div class="padding-top assertive text-center" ng-show="detailCouponError">
			<small>Coupon code is not valid.</small>
		</div>
	</div>
	<div class="item item-text-wrap">
		<span>Amount payable</span><span class="float-right">$1919</span>
	</div>
</div>
<div ng-hide="detailBooked">
	<div class="stable text-center padding-vertical">By proceeding, you agree to our <span class="assertive" ui-sref="app.detailPolicies">Guest Policies</span></div>
	<button class="button button-assertive width-80 margin-auto" ng-click="booking()" ng-hide="detailBooking">BOOK ROOM</button>
</div>
<div class="detail-booking relative padding-bottom" ng-show="detailBooking">
	<div class="booking-note light padding text-center">Booking in progress Tap to cancel</div>
	<svg class="margin-auto" viewBox="0 0 64 64"><g><circle stroke-width="4" stroke-dasharray="128" stroke-dashoffset="82" r="26" cx="32" cy="32" fill="none" transform="rotate(232.444 32 32)"><animateTransform values="0,32,32;360,32,32" attributeName="transform" type="rotate" repeatCount="indefinite" dur="1500ms"></animateTransform></circle></g></svg>
	<button class="button button-icon no-border ion-ios-close-empty" ng-click="reload()"></button>
</div>
</ion-content>
<div class="detail-booked balanced-bg row row-center light" ng-show="detailBooked">
	<div class="col text-center" ui-sref="app.bookingConfirmed">
		<i class="icon icon-hand"></i>
		<div>BOOKING CONFIRMED</div>
	</div>
</div>
</ion-view>