<ion-view hide-nav-bar="true">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-content class="booking-detail stable-bg">
<div class="relative light" style="font-size:120%">
	<img src="img/booking/detail/pending-bg.jpg">
	<button class="button button-icon button-clear ion-android-arrow-back" ui-sref="app.booking"></button>
	<div class="absolute-footer">ROOM 1</div>
	<button class="button button-icon icon-call balanced-bg light"></button>
</div>
<div class="padding">
<div class="padding-horizontal stable">BOOKING ID: LXJ7089</div>
<div class="card">
	<div class="item item-text-wrap">hymenaeos sed tortor per dolor augue, est consequat per. Arcu est mattis quis orci aliquam, leo sed</div>
	<div class="item item-icon-left" ui-sref="app.bookingDirection">
		<i class="icon icon-direction assertive"></i>DIRECTIONS
	</div>
</div>
<div class="list">
	<div class="item item-avatar" ng-click="openModalSelectTime()">
		<img src="css/img/icon-clock.png" />
		<h2 class="assertive">ARRIVAL TIME</h2>
		<p>arcu in sapien morbi accumsan</p>
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
			<h4>Jan02</h4>
			<p class="stable">12 AM</p>
		</div>
		<div class="col">
			<p class="stable">GUESTS</p>
			<h4>01</h4>
			<p class="stable">01 ROOMS</p>
		</div>
	</div>
	<div class="row"><div class="col">
		<p class="stable">TO BE PAID AT HOTEL</p>
		<h4>$9999</h4>
	</div></div>
	<div class="row"><div class="col">
		<p class="stable">PRIMARY GUEST</p>
		<h4>name here</h4>
	</div></div>
</div>
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
</ion-view>