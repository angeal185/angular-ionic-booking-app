﻿<ion-view hide-nav-bar="true">
<link href="css/search.css" rel="stylesheet" type="text/css" />
<ion-header-bar class="bar-assertive search-header" style="top:0">
	<button class="button button-icon ion-ios-arrow-left" ui-sref="app.home"></button>
	<div class="title">
		<p class="no-margin">Deluxe Room</p><span>16 May - 17 May, 2 ROOMS</span>
	</div>
</ion-header-bar>
<ion-content class="search-main padding">
<div class="search-list relative margin-bottom light" ng-repeat="item in searchs" ui-sref="app.detail">
	<div class="search-bg"></div>
	<img src="img/search/{{item.id}}.jpg">
	<div class="absolute-footer padding">Room {{item.id}}</div>
	<div class="search-price padding">
		<div>{{item.price}}</div>
		<div class="per" ng-show="item.pricePer">per {{item.pricePer}}</div>
	</div>
	<div class="search-note" ng-show="item.note">{{item.note}}</div>
</div>
</ion-content>
<ion-footer-bar class="no-padding search-footer">
<div class="row row-no-padding">
	<div class="list no-margin col col-center col-60 padding-left">
		<div class="padding-left"><i class="icon float-left icon-calendar-2 margin-right"></i>
		<span>16 May - 17 May</span>
	</div>
	</div>
	<div class="col col-20">
		<button class="button button-full no-margin icon icon-filter" ui-sref="app.searchFilter"><div>FILTER</div></button>
	</div>
	<div class="col col-20">
		<button class="button button-full no-margin icon icon-arrow-swap" ng-click="openModalSearchSort()"><div>SORT</div></button>
	</div>
</div>
</ion-footer-bar>
</ion-view>