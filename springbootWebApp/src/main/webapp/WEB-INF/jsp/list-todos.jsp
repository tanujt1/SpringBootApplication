<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Completed</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate value="${todo.targetDate}"
							pattern="dd/MM/yyyy" /></td>
					<td>${todo.done}</td>
					<td><a type="button" class="btn btn-success"
						href="/update-todo?id=${todo.id}">Update</a></td>

					<td><a type="button" class="btn btn-warning"
						href="/delete-todo?id=${todo.id}">Delete</a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div>
		<a href="/add-todo">Add a Todo</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>