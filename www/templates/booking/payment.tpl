﻿<ion-modal-view class="modal-payment">
<link href="css/booking.css" rel="stylesheet" type="text/css">
<ion-content scroll="false">
	<div class="list no-margin">
		<div class="item item-icon-left item-icon-right">
			<i class="icon icon-price-dola"></i>
			<p>PAY $ 9999</p>
			<span>Net Banking</span>
			<i class="icon ion-ios-checkmark"></i>
		</div>
	</div>
	<div class="row row-no-padding list-payment">
		<div class="col text-center" ng-click="closeModalPayment()" ui-sref="app.bookingPaymentCard">
			<i class="icon icon-table icon-credit"></i>
			<div>Credit Card</div>
		</div>
		<div class="col text-center" ng-click="closeModalPayment()" ui-sref="app.bookingPaymentCard">
			<i class="icon icon-table icon-debit"></i>
			<div>Debit Card</div>
		</div>
		<div class="col text-center" ng-click="closeModalPayment()" ui-sref="app.bookingPaymentNet">
			<i class="icon icon-price-dola"></i>
			<div>Net Banking</div>
		</div>
	</div>
</ion-content>
</ion-modal-view>