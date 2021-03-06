<!-- Navigation Bar -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/home"/>">Liquid Democracy</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="<c:url value="/about"/>">About</a></li>
				<li><a href="<c:url value="/area"/>">Areas</a></li>
				<li><a href="<c:url value="/project"/>">Projects</a></li>
				<li><a href="<c:url value="/citizen"/>">Citizens</a></li>
				<li><a href="<c:url value="/organization"/>">Organizations</a></li>
			</ul>
			<c:choose>
				<c:when test="${userInfo.user != null}">
				
				</c:when>
				<c:otherwise>
					<form role="form" class="form-inline pull-right form-login"  action="<c:url value="/login"/>" method="post">
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email" name="user.email" required> 
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Senha" name="user.password" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-success">Login</button>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>


