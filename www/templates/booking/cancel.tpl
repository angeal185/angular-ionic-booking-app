﻿<ion-modal-view class="modal-cancel-booking">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-content class="padding" scroll="false">
	<small class="assertive">No cancellation charge</small>
	<div class="padding-bottom">Select reason for cancellation</div>
	<ion-radio ng-model="choice" ng-click="closeModalCancelBooking()">Change in plan</ion-radio>
	<ion-radio ng-model="choice" ng-click="closeModalCancelBooking()">Found a better deal</ion-radio>
	<ion-radio ng-model="choice" ng-click="closeModalCancelBooking()">Want to book a different hotel</ion-radio>
	<ion-radio ng-model="choice" ng-click="closeModalCancelBooking()">Booking created by mistake</ion-radio>
	<ion-radio ng-model="choice" ng-click="closeModalCancelBooking()">Other</ion-radio>
</ion-content>
</ion-modal-view>