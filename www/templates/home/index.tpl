﻿<ion-view hide-nav-bar="true" view-title="Home">
<link href="css/home.css" rel="stylesheet" type="text/css" />
<ion-content class="home-main bg-full">
    <div class="row">
		<button class="button button-icon ion-navicon" menu-toggle="left"></button>
	</div>
	<img src="css/img/logo.png" class="margin-auto" width="100px">
	<div class="list card">
	<div class="item" ng-click="showPopupKind()"><i class="icon ion-home"></i> Room type</div>
	<div class="item item-body no-padding stable">
		<div class="row no-padding border-bottom">
		
		<div class="col padding border-right" ng-click="openDateCheckIn()">
			<div class="margin-bottom-10"><i class="icon ion-calendar"></i>CHECK IN</div>
			<div class="row row-no-padding">
				<h1 class="col col-center text-right dark no-margin">{{dateInOut.datein | date : 'dd'}}</h1>
				<div class="margin-left col text-upper">
					<b>{{dateInOut.datein | date : 'MMM'}}</b>
					<div>{{dateInOut.datein | date : 'yyyy'}}</div>
				</div>
			</div>
		</div>
		
		<div class="col padding" ng-click="openDateCheckOut()">
			<div class="margin-bottom-10"><i class="icon ion-calendar"></i>CHECK OUT</div>
			<div class="row row-no-padding">
				<h1 class="col col-center text-right dark no-margin">{{dateInOut.dateout | date : 'dd'}}</h1>
				<div class="margin-left col text-upper">
					<b>{{dateInOut.dateout | date : 'MMM'}}</b>
					<div>{{dateInOut.dateout | date : 'yyyy'}}</div>
				</div>
			</div>
		</div>
		
		</div>
		<div class="row row-no-padding no-margin padding-important">
			<div class="col col-40"><div><i class="icon icon-bed"></i>ROOMS</div></div>
			<div class="col col-40"><div><i class="icon icon-person"></i>PEOPLE</div></div>
		</div>
		<div class="row row-no-padding padding no-margin option-room" ng-repeat="i in rangeRoom(numberRoom) track by $index" ng-init="optionTravellers[$index+1]=1">
			<div class="col col-40 stable-bg text-center">Room {{$index+1}}</div>
			<div class="col col-40 relative border-right">
				<div class="padding-horizontal" ng-click="showOptionTraveller[$index+1] = 1">
					<div class="width-100">
						<div class="no-wrap width-80 float-left margin-right">{{optionTravellers[$index+1]}}</div>
						<i class="icon ion-android-arrow-dropdown dark no-margin"></i>
					</div>
				</div>
				<div class="option-traveller-room list" ng-show="showOptionTraveller[$index+1] > 0">
					<div class="item" ng-click="choseOptionTraveller({{$index+1}},'1')">1</div>
					<div class="item" ng-click="choseOptionTraveller({{$index+1}},'2')">2</div>
					<div class="item" ng-click="choseOptionTraveller({{$index+1}},'2 + 1 Extra Person')">2 + 1 Extra Person</div>
				</div>
			</div>
			<div class="col col-20">
				<i ng-show="$first" class="icon ion-plus-circled" ng-click="addRoom()"></i>
				<i ng-show="!$first" class="icon ion-close-circled remove" ng-click="removeRoom()"></i>
			</div>
		</div>
	</div>
	</div>
	<button class="button button-assertive width-80 margin-auto" ui-sref="app.search">SEARCH HOTELS</button>
	<div class="text-center padding"><a class="stable">2016 Ben Eaves</a></div>
</ion-content>
</ion-view>