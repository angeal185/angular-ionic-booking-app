﻿<ion-view view-title="Booking Confirmed">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-assertive">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ng-click="goBack()"></button>
	</ion-nav-buttons>
	<ion-nav-buttons side="right">
	<button class="button button-icon button-clear icon-call" ui-sref="app.home"></button>
	</ion-nav-buttons>
	<ion-nav-buttons side="secondary">
	<button class="button button-icon button-clear ion-android-share-alt" ui-sref="app.home"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content class="booking-detail stable-bg padding">
<div class="stable padding-bottom">BOOKING ID: xxxxxx</div>
<div class="card no-margin-top">
	<div class="item item-image relative light" style="font-size:120%">
		<img src="img/booking/detail/pending-bg.jpg">
		<div class="absolute-footer">Single Room</div>
	</div>
	<div class="item item-icon-left" ui-sref="app.bookingDirection">
		<i class="icon icon-direction assertive"></i>DIRECTIONS
	</div>
</div>
<div class="list">
	<div class="item item-avatar" ng-click="openModalSelectTime()">
		<img src="css/img/icon-clock.png" />
		<h2 class="assertive">TELL US YOUR TIME OF ARRIVAL</h2>
		<p>We Will keep your room ready</p>
	</div>
</div>
<div class="card pending-info no-margin">
	<div class="row">
		<div class="col">
			<p class="stable">CHECK IN</p>
			<h4>Jan 01</h4>
			<p class="stable">12 PM</p>
		</div>
		<div class="col">
			<p class="stable">CHECK IN</p>
			<h4>Jan 02</h4>
			<p class="stable">11 AM</p>
		</div>
		<div class="col">
			<p class="stable">GUESTS</p>
			<h4>01</h4>
			<p class="stable">01 ROOMS</p>
		</div>
	</div>
	<div class="row"><div class="col">
		<p class="stable">TO BE PAID AT HOTEL</p>
		<h4>$2399</h4>
	</div></div>
	<div class="row"><div class="col">
		<p class="stable">PRIMARY GUEST</p>
		<h4>Name here</h4>
	</div></div>
</div>
</ion-content>
<ion-footer-bar class="no-padding">
	<div class="row row-no-padding">
	<div class="col">
		<button class="button button-full no-margin" style="background:#9b9b9b" ng-click="openModalCancelBooking()">
			<b class="light">CANCEL BOOKING</b>
		</button>
	</div>
	<div class="col">
		<button class="button button-full no-margin button-balanced" ng-click="openModalPayment()">
			<b>PRE-PAY-$9999</b>
		</button>
	</div>
	</div>
</ion-footer-bar>
</ion-content>
</ion-view>