<ion-view view-title="Select Category">
<link href="css/chat.css" rel="stylesheet" type="text/css">
<ion-nav-bar class="bar-assertive">
	<ion-nav-buttons side="left">
	<button class="button button-icon button-clear ion-android-arrow-back" ui-sref="app.home"></button>
	</ion-nav-buttons>
</ion-nav-bar>
<ion-content class="stable-bg">
	<div class="list">
		<div class="item item-avatar stable-bg relative" ui-sref="app.chatDetail">
			<img src="img/chat/1.png">
			<b>Technical Assitance</b>
			<p>xxx</p>
			<p class="chat-time">03:42 CH</p>
			<div class="chat-new">1</div>
		</div>
		<div class="item item-avatar stable-bg relative" ui-sref="app.chatDetail">
			<img src="img/chat/2.png">
			<b>Payment/Refunds</b>
			<p>xxx</p>
		</div>
	</div>
</ion-content>
</ion-view>