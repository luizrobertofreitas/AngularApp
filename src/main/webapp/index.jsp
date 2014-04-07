<!doctype html>
<html ng-app>
	<head>
		<link href="resources/bootstrap311/css/bootstrap.min.css">
		<link href="resources/bootstrap311/css/bootstrap.css.map">
		<link href="resources/bootstrap311/css/bootstrap-theme.min.css">
		<link href="resources/bootstrap311/css/bootstrap-theme.css.map">
		<link href="resources/todo.css">
		<script type="text/javascript" src="resources/angular.js"></script>
		<script type="text/javascript" src="resources/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="resources/jquery-1.11.0.min.map"></script>
		<script type="text/javascript" src="resources/bootstrap311/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/ui-bootstrap-tpls-0.10.0.js"></script>
		<script type="text/javascript" src="resources/todo.js"></script>
	</head>
	<body>
		<h2>Hello World!</h2>
		<br/>
		<div>
			<label>Name:</label>
			<input type="text" ng-model="yourName" placeholder="Enter a name here">
			<hr/>
			<h1>Hello {{yourName}}!</h1>
		</div>
		<br/>
		<h2>Todo</h2>
	    <div ng-controller="TodoCtrl">
	      <span>{{remaining()}} of {{todos.length}} remaining</span>
	      [ <a href="" ng-click="archive()">archive</a> ]
	      <ul class="unstyled">
	        <li ng-repeat="todo in todos">
	          <input type="checkbox" ng-model="todo.done">
	          <span class="done-{{todo.done}}">{{todo.text}}</span>
	        </li>
	      </ul>
	      <form ng-submit="addTodo()">
	        <input type="text" ng-model="todoText"  size="30"
	               placeholder="add new todo here">
	        <input class="btn-primary" type="submit" value="add">
	      </form>
	    </div>
	</body>
</html>
