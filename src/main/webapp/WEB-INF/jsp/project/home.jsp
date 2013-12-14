<div class="container">
	<div class="page-header">
		<h1>Project</h1>
	</div>

	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="width: 10%">code</th>
					<th style="width: 20%">Name</th>
					<th style="width: 20%">author</th>
					<th style="width: 30%">Description</th>
					<th style="width: 10%">addate</th>
					<th style="width: 10%">endate</th>
				</tr>
			</thead>
			<c:forEach var="project" items="${projects}">
				<tbody>
					<tr>
						<td>${project.code}</td>
						<td>${project.name}</td>
						<td>${project.author}</td>
						<td>${project.description}</td>
						<td>${project.addate}</td>
						<td>${project.endate}</td>
					</tr>
				</tbody>
			</c:forEach>
			<c:if test="${projects.size() <= 0}">
				<td colspan="2" style="text-align: center;">No Records Found.</td>
			</c:if>
		</table>
		<a href="<c:url value="/project/new"/>">New Project</a>
	</div>
</div>
