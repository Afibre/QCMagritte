css
tabMenuCss
	^'
.tab-menu {
	display: table;
	table-layout: fixed;
	padding: 0;
	margin: 50px 0 0 0;
}

.tab-menu li {
	display: table-cell;
	width: auto;
	text-align: center;
	padding: 0;
	margin: 0px;
	border-right: solid #5878b3 1px;
	border-left: solid #5878b3 1px;
	border-top: solid #5878b3 1px;
	border-top-left-radius: 10px;
	border-top-right-radius: 15px;
	background-color: #5878b3;
}
.tab-menu li:hover {
	background-color: #EFEFFF;
}
.tab-menu li a {
	margin:0;
	padding: 3px 8px;
	display:block;
	font-weight:bold;
	line-height:15px;
	color:#fff;
	text-decoration:none;
}

.tab-menu li a:hover {
	color: #5878b3;
}

.tab-menu li.active {
	background-color: #EFEFFF;
}
.tab-menu li.active a {
	color: #5878b3;
}
.tab-menu li.active a:hover {
	color: #878787;
}

.tab-menu-ruler {
	width: 800px;
	height: 2px;
	margin: 0 0 15px 0;
	padding: 0;
	text-align: left;
	line-height: 2px;
	background: #5878b3;
}
'