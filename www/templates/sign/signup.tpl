﻿<ion-view view-title="Sign up">
<link href="css/sign.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-assertive">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ui-sref="app.sign"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content class="padding stable-bg" scroll="false" ng-controller="AreaCtrl">
	<a class="button button-block button-facebook icon-left icon-facebook no-margin" href="https://fb.com">
		<span>Sign up with Facebook</span>
	</a>
	<div class="row row-no-padding margin-vertical over-hidden">
		<hr class="col col-40 col-center no-margin"></hr>
		<div class="col col-20 text-center">OR</div>
		<hr class="col col-40 col-center no-margin"></hr>
	</div>
	<div class="list sign-form">
		<label class="item item-input no-margin">
			<input type="text" placeholder="Name">
		</label>
		<label class="item item-input no-margin relative">
			<input type="text" placeholder="Email" ng-model="user.email"/>
			<i ng-show="error=='email'" class="icon icon-error assertive"></i>
		</label>
		<label class="item item-input no-margin relative">
			<input type="password" placeholder="Password" ng-model="user.password"/>
			<i ng-show="error=='password'" class="icon icon-error assertive"></i>
		</label>
		<div class="item item-input no-margin no-padding-vertical">
			<div class="sign-areacode border-right" ng-click="openModalAreaCode()">
				<span>{{areacodeSelected}}</span>
				<i class="icon ion-android-arrow-dropdown float-right"></i>
			</div>
			<input type="text" placeholder="Phone" />
		</div>
	</div>
	<button class="button button-block button-assertive" ng-click="signUp()">SIGN UP</button>
	<div class="stable text-center" ui-sref="app.sign">ALREADY HAVE AN ACCOUNT?</div>
</ion-content>
</ion-view>