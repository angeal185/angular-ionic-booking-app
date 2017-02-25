﻿<ion-view view-title="My Booking">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-assertive">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ui-sref="app.home"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content class="booking-main">
<div class="list no-margin" ng-repeat="item in booking">
	<div class="item item-divider">{{item.name}}</div>
	<div class="item item-thumbnail-left no-border" ng-repeat="list in item.list" ng-click="viewBooking('{{list.status}}')">
		<img src="img/booking/{{list.id}}.jpg">
		<h3>${{list.price}}</h3>
		<h4>{{list.category}}</h4>
		<div>{{list.time}}</div>
		<div class="booking-status" ng-class="{'pending':list.status=='Pending','canceled':list.status=='Canceled'}">{{list.status}}</div>
	</div>
</div>
</ion-content>
</ion-view>