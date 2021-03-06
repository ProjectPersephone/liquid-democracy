<div class="container">
	<div class="page-header">
		<h1>Area</h1>
	</div>

	<div class="row">
		<form role="form" action="<c:url value="/area/find"/>" method="post">
			<input type="text" name="name" placeholder="enter name area" />
			<button type="submit" class="btn btn-default">find</button>
		</form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 50%">Name</th>
					<th style="width: 50%">Description</th>
				</tr>
			</thead>
			<c:forEach var="area" items="${areas}">
				<tbody>
					<tr>
						<td style="width: 50%">${area.name}</td>
						<td style="width: 50%">${area.description}</td>
						<td>
							<form role="form" action="<c:url value="/area/delete/${area.id}"/>" method="post">
								<button type="submit" class="btn btn-default">X</button>
							</form>
						</td>
					</tr>
				</tbody>
			</c:forEach>
			<c:if test="${fn:length(areas) <= 0 }">
				<td colspan="2" style="text-align: center;">No Records Found.</td>
			</c:if>
		</table>
		<a href="<c:url value="/area/new"/>">New Area</a>
	</div>
</div>
