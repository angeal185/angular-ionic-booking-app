﻿<ion-view view-title="Sign in">
<link href="css/sign.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-assertive">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ui-sref="app.home"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content class="padding stable-bg" scroll="false">
	<a class="button button-block button-facebook icon-left icon-facebook no-margin" href="https://fb.com">
		<span>Sign in with Facebook</span>
	</a>
	<div class="row row-no-padding margin-vertical over-hidden">
		<hr class="col col-40 col-center no-margin"></hr>
		<div class="col col-20 text-center">OR</div>
		<hr class="col col-40 col-center no-margin"></hr>
	</div>
	<div class="list sign-form">
		<label class="item item-input no-margin relative">
			<input type="text" placeholder="Email" ng-model="user.email"/>
			<i ng-show="error=='email'" class="icon icon-error assertive"></i>
		</label>
		<label class="item item-input no-margin relative">
			<input type="password" placeholder="Password" ng-model="user.password"/>
			<i ng-show="error=='password'" class="icon icon-error assertive"></i>
		</label>
	</div>
	<button class="button button-block button-assertive" ng-click="signIn()">SIGN IN</button>
	<div class="stable text-center">
		<div ui-sref="app.signForgot">FORGOT YOUR PASSWORD?</div>
		<span>----------</span>
		<div ui-sref="app.signup">NEW USER? SIGN UP NOW</div>
	</div>
</ion-content>
</ion-view>