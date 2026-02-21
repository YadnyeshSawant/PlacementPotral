<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="beans.Job"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Student Dashboard - Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100..700,0..1&amp;display=swap"
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
	<!-- Main Container -->
	<div class="flex h-screen overflow-hidden">
		<!-- SideNavBar -->
		<jsp:include page="studentNavbar.jsp" />

		<!-- Content Area -->
		<main class="flex-1 flex flex-col overflow-y-auto">
			<!-- TopNavBar -->
			<header
				class="sticky top-0 z-10 bg-white/80 dark:bg-slate-900/80 backdrop-blur-md border-b border-slate-200 dark:border-slate-800 px-8 py-4 flex items-center justify-between">
				<div class="flex items-center gap-2">
					<button disabled
						class="flex items-center gap-2 text-slate-500 hover:text-primary transition-colors font-semibold text-sm">Browse
						Jobs</button>
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
							<p class="text-xs text-slate-500">${student.programName}</p>
						</div>
						<div
							class="w-10 h-10 rounded-full bg-slate-200 dark:bg-slate-800 bg-cover bg-center border-2 border-primary/20"
							data-alt="Profile picture of male student Alex Johnson"
							style='background-image: url("https://lh3.googleusercontent.com/aida-public/AB6AXuBE4NDlIjq0-20oKB7UDyoHmFYgVsJcuDlQl0_3OxVQAPKmibOrGY940KXTXgPGjkGbRm_d_5TT7Hi6Dz-HXjplp1uYGxJtlPY07B6NjvnZ04O_JtOReX56_-lxGhV2aOGi5NWPfYV4K_AiU_WP1st2VWAt_Iu5SgRqsnkFnEjxMoP0Pw4CvxfWYNQbeISPvSPQD3nHvyMsZ2-2eWu7VJGiO5T6HpzsRl2TGbguHPXhmtQwnRK5KuQQdaYM6L6mcXrp08lS0Ms4btU");'>
						</div>
					</div>
				</div>
			</header>
			<!-- Main Content Container -->
			<div class="p-8 max-w-6xl mx-auto w-full">
				<!-- Profile Card Section -->

				<!-- Job Openings Section -->
				<section>
					<div class="flex items-center justify-between mb-6">
						<h3 class="text-2xl font-bold text-slate-900 dark:text-white">Active
							Job Openings</h3>
						<div class="flex gap-2">

							<button
								class="bg-green-700  hover:bg-green-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
								${totalJobs} Positions Open</button>
						</div>
					</div>
					<!-- SearchBar Component -->
					<div class="mb-6">
						<label class="flex flex-col min-w-40 h-12 w-full max-w-lg">
							<div
								class="flex w-full flex-1 items-stretch rounded-lg h-full shadow-sm border border-slate-200 dark:border-slate-800">
								<div
									class="text-slate-400 flex items-center justify-center pl-4 bg-white dark:bg-slate-900 rounded-l-lg">
									<span class="material-symbols-outlined">search</span>
								</div>
								<input
									class="flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-r-lg text-slate-900 dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary/50 border-none bg-white dark:bg-slate-900 h-full placeholder:text-slate-400 px-4 pl-2 text-sm font-normal"
									placeholder="Search by company or role..." />
							</div>
						</label>
					</div>
					<!-- Jobs Table Container -->
					<div
						class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 overflow-hidden">
						<div class="overflow-x-auto">
							<table class="w-full text-left border-collapse">
								<thead>
									<tr
										class="bg-slate-50 dark:bg-slate-800/50 border-b border-slate-200 dark:border-slate-800">
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Company
											ID</th>

										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Company
											Name</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Role</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Location</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Vacancy</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider whitespace-nowrap">Type</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-right whitespace-nowrap">Action</th>
									</tr>
								</thead>
								<tbody class="divide-y divide-slate-100 dark:divide-slate-800">

									<%
									java.util.List<beans.Job> jobs = (java.util.List<beans.Job>) request.getAttribute("jobs");

									if (jobs != null && !jobs.isEmpty()) {
										for (beans.Job job : jobs) {

											String desc = job.getDescription();
											if (desc == null)
										desc = "";

											String shortDesc = desc.length() > 40 ? desc.substring(0, 40) + "..." : desc;
									%>

									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">

										<!-- Company -->
										<td class="px-6 pl-10 py-5">
											<p
												class="text-sm font-bold text-slate-900 dark:text-white truncate">

												<%=job.getCompanyId()%>
											</p>
										</td>
										
										<td class="px-6 pl-10 py-5">
											<p
												class="text-sm font-bold text-slate-900 dark:text-white truncate">

												<%=job.getCompanyName()%>
											</p>
										</td>

										<!-- Role + Hover Description -->
										<td class="px-6 py-5">
											<div class="group relative">

												<!-- Visible Content -->
												<div class="flex flex-col">
													<div class="flex items-center gap-1.5">
														<span
															class="text-sm font-semibold text-slate-900 dark:text-white">
															<%=job.getRole()%>
														</span> <span class="text-[10px] font-medium dark:text-white">
															#JOB-<%=job.getJobId()%>
														</span>
													</div>

													<!-- Short Preview -->
													<span
														class="text-xs text-slate-500 line-clamp-1 max-w-[200px]">
														<%=shortDesc%>
													</span>
												</div>

												<!-- Hover Tooltip -->
												<div
													class="hidden group-hover:block absolute left-0 top-full mt-2 p-3
                       bg-white dark:bg-slate-800
                       border border-slate-200 dark:border-slate-700
                       rounded-lg shadow-xl z-20 w-64">

													<p class="text-xs font-semibold text-primary mb-1">
														Full Description</p>

													<p class="text-xs text-slate-600 dark:text-slate-300">
														<%=desc%>
													</p>
												</div>

											</div>
										</td>

										<!-- Location -->
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-600 dark:text-slate-400">
												<%=job.getLocation() == null ? "N/A" : job.getLocation()%>
										</span></td>

										<!-- Vacancy -->
										<td class="px-6  py-5"><span
											class="text-sm font-medium text-slate-900 dark:text-white">
												<%=job.getVacancy()%>
										</span></td>

										<!-- Type -->
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-600 dark:text-slate-400">
												<%=job.getType()%>
										</span></td>

										<!-- Apply Button -->
										<td class="px-6 py-5 text-right">
											<form action="applyJob" method="post">
												<input type="hidden" name="jobId"
													value="<%=job.getJobId()%>">
												<button
													class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
													Apply</button>
											</form>
										</td>

									</tr>

									<%
									}
									} else {
									%>

									<tr>
										<td colspan="6" class="text-center py-6 text-slate-500">
											No Job Openings Available</td>
									</tr>

									<%
									}
									%>

								</tbody>
							</table>
						</div>
						<!-- Table Footer / Pagination -->
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

								<!-- Previous Button -->
								<%
								if (currentPage > 1) {
								%>
								<a href="viewJobs?page=<%=currentPage - 1%>"
									class="px-3 py-1 border rounded bg-white hover:bg-slate-100 text-sm">
									Previous </a>
								<%
								}
								%>

								<!-- Next Button -->
								<%
								if (currentPage < totalPages) {
								%>
								<a href="viewJobs?page=<%=currentPage + 1%>"
									class="px-3 py-1 border rounded bg-white hover:bg-slate-100 text-sm">
									Next </a>
								<%
								}
								%>

							</div>
						</div>
					</div>
				</section>
				<!-- Footer Stats Placeholder -->
				<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-8">
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-primary/10 rounded-lg text-primary">
								<span class="material-symbols-outlined">send</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Total
									Applications</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">08</p>
							</div>
						</div>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-yellow-500/10 rounded-lg text-yellow-500">
								<span class="material-symbols-outlined">pending_actions</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">In
									Process</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">03</p>
							</div>
						</div>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-green-500/10 rounded-lg text-green-500">
								<span class="material-symbols-outlined">check_circle</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Offers
									Received</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">01</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Page Footer -->
			<footer
				class="mt-auto py-8 px-8 border-t border-slate-200 dark:border-slate-800 text-center">
				<p class="text-sm text-slate-400">© 2024 University Career
					Portal. All recruitment cycles are subject to university
					guidelines.</p>
			</footer>
		</main>
	</div>

	<%
	String toastMessage = (String) session.getAttribute("toastMessage");
	if (toastMessage != null) {
	%>

	<div id="toast"
		class="fixed top-5 right-5 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg z-50 transition-opacity duration-500">
		<%=toastMessage%>
	</div>

	<script>
    setTimeout(() => {
        const toast = document.getElementById("toast");
        if (toast) {
            toast.style.opacity = "0";
            setTimeout(() => toast.remove(), 200);
        }
    }, 3000);
</script>

	<%
	session.removeAttribute("toastMessage");
	}
	%>
</body>
</html>