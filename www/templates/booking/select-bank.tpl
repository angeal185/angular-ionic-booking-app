﻿<ion-modal-view class="modal-select-bank">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-content scroll="false" ng-init="selectBank = 1">
	<div class="list text-center">
	<ion-radio ng-model="selectBank" ng-value="1" ng-click="closeModalSelectBank()">Select your bank</ion-radio>
	<ion-radio ng-click="closeModalSelectBank()">Bank a</ion-radio>
	<ion-radio ng-click="closeModalSelectBank()">Bank b</ion-radio>
	</div>
</ion-content>
</ion-modal-view>