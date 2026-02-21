<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.ApplicationDetails"%>
<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>My Applications - Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script id="tailwind-config">
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					"primary" : "#195de6",
					"background-light" : "#f6f6f8",
					"background-dark" : "#111621",
				},
				fontFamily : {
					"display" : [ "Manrope", "sans-serif" ]
				},
				borderRadius : {
					"DEFAULT" : "0.25rem",
					"lg" : "0.5rem",
					"xl" : "0.75rem",
					"full" : "9999px"
				},
			},
		},
	}
</script>
<style>
body {
	font-family: 'Manrope', sans-serif;
}

.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

.sidebar-active {
	background-color: #195de620;
	color: #195de6;
	border-right: 3px solid #195de6;
}
</style>
</head>
<body
	class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 min-h-screen">
	<div class="flex h-screen overflow-hidden">
		<jsp:include page="studentNavbar.jsp" />
		<main class="flex-1 flex flex-col overflow-y-auto">
			<header
				class="sticky top-0 z-10 bg-white/80 dark:bg-slate-900/80 backdrop-blur-md border-b border-slate-200 dark:border-slate-800 px-8 py-4 flex items-center justify-between">
				<div class="flex items-center gap-4">
					<h2 class="text-xl font-bold text-slate-800 dark:text-white">My
						Applications</h2>
				</div>
				<div class="flex items-center gap-6">
					<div class="relative">
						<button
							class="p-2 text-slate-500 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-full transition-colors">
							<span class="material-symbols-outlined">notifications</span>
						</button>
						<span
							class="absolute top-2 right-2 w-2 h-2 bg-red-500 rounded-full border-2 border-white dark:border-slate-900"></span>
					</div>
					<div class="flex items-center gap-3">
						<div class="text-right">
							<p class="text-sm font-bold text-slate-900 dark:text-white">${student.firstName}
								${student.lastName}</p>
							<p class="text-xs text-slate-500">${student.prn}</p>
						</div>
						<div
							class="w-10 h-10 rounded-full bg-slate-200 dark:bg-slate-800 bg-cover bg-center border-2 border-primary/20"
							style='background-image: url("https://lh3.googleusercontent.com/aida-public/AB6AXuBE4NDlIjq0-20oKB7UDyoHmFYgVsJcuDlQl0_3OxVQAPKmibOrGY940KXTXgPGjkGbRm_d_5TT7Hi6Dz-HXjplp1uYGxJtlPY07B6NjvnZ04O_JtOReX56_-lxGhV2aOGi5NWPfYV4K_AiU_WP1st2VWAt_Iu5SgRqsnkFnEjxMoP0Pw4CvxfWYNQbeISPvSPQD3nHvyMsZ2-2eWu7VJGiO5T6HpzsRl2TGbguHPXhmtQwnRK5KuQQdaYM6L6mcXrp08lS0Ms4btU");'>
						</div>
					</div>
				</div>
			</header>
			<div class="p-8 max-w-7xl mx-auto w-full">
				<div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">Total
							Applied</p>
						<p class="text-2xl font-bold text-slate-900 dark:text-white">
							${totalApplied}</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">In
							Progress</p>
						<p class="text-2xl font-bold text-blue-600">${inProgress}</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">Offered</p>
						<p class="text-2xl font-bold text-green-600">${offered}</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">Rejected</p>
						<p class="text-2xl font-bold text-red-600">${rejected}</p>
					</div>
				</div>
				<section>
					<div
						class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 overflow-hidden">
						<div class="overflow-x-auto">
							<table class="w-full text-left border-collapse">
								<thead>
									<tr
										class="bg-slate-50 dark:bg-slate-800/50 border-b border-slate-200 dark:border-slate-800">
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Application
											ID</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Company</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Role</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Location</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Status</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-right whitespace-nowrap">Action</th>
									</tr>
								</thead>
								<tbody class="divide-y divide-slate-100 dark:divide-slate-800">

									<%
									List<ApplicationDetails> apps = (List<ApplicationDetails>) request.getAttribute("applications");

									if (apps != null && !apps.isEmpty()) {
										for (ApplicationDetails app : apps) {
									%>

									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">

										<td class="px-6 py-5"><span
											class="text-sm font-mono font-medium text-slate-600">
												<%=app.getApplicationId()%>
										</span></td>

										<td class="px-6 py-5">
											<p class="text-sm font-bold text-slate-900">
												<%=app.getCompanyName()%>
											</p>
										</td>

										<td class="px-6 py-5"><span class="text-sm font-semibold">
												<%=app.getRole()%>
										</span></td>

										<td class="px-6 py-5"><span
											class="text-sm text-slate-600"> <%=app.getLocation()%>
										</span></td>

										<td class="px-6 py-5">
											<%
											String status = app.getApplicationStatus();
											String badgeColor = "bg-slate-100 text-slate-600";

											if ("Offered".equalsIgnoreCase(status)) {
												badgeColor = "bg-green-100 text-green-600";
											} else if ("Rejected".equalsIgnoreCase(status)) {
												badgeColor = "bg-red-100 text-red-600";
											} else if ("Interviewing".equalsIgnoreCase(status)) {
												badgeColor = "bg-blue-100 text-blue-600";
											}
											%> <span
											class="px-2.5 py-1 <%=badgeColor%> text-xs font-bold rounded-full">
												<%=status%>
										</span>
										</td>

										<td class="px-6 py-5 text-right">
											<form action="myApplicationDetails" method="get">
												<input type="hidden" name="applicationId"
													value="<%=app.getApplicationId()%>">
												<button
													class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
													View Detials</button>
											</form>
										</td>

									</tr>

									<%
									}
									} else {
									%>

									<tr>
										<td colspan="6" class="text-center py-6 text-slate-500">
											No Applications Found</td>
									</tr>

									<%
									}
									%>

								</tbody>
							</table>
						</div>
						<div
							class="px-6 py-4 bg-slate-50 dark:bg-slate-800/50 
            border-t border-slate-200 dark:border-slate-800 
            flex items-center justify-between">

							<p class="text-xs text-slate-500 font-medium">Page
								${currentPage} of ${totalPages}</p>

							<div class="flex gap-2">

								<%
								int currentPage = (Integer) request.getAttribute("currentPage");
								int totalPages = (Integer) request.getAttribute("totalPages");
								%>

								<%
								if (currentPage > 1) {
								%>
								<a href="myApplications?page=<%=currentPage - 1%>"
									class="px-3 py-1 border rounded bg-white hover:bg-slate-100 text-sm">
									Previous </a>
								<%
								}
								%>

								<%
								if (currentPage < totalPages) {
								%>
								<a href="myApplications?page=<%=currentPage + 1%>"
									class="px-3 py-1 border rounded bg-white hover:bg-slate-100 text-sm">
									Next </a>
								<%
								}
								%>

							</div>
						</div>
					</div>
				</section>
			</div>
			<footer
				class="mt-auto py-8 px-8 border-t border-slate-200 dark:border-slate-800 text-center">
				<p class="text-sm text-slate-400">© 2024 University Career
					Portal. All recruitment cycles are subject to university
					guidelines.</p>
			</footer>
		</main>
	</div>

</body>
</html>