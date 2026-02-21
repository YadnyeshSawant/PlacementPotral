<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.ApplicationDetails"%>
<%
ApplicationDetails d = (ApplicationDetails) request.getAttribute("details");
%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Application View - Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700&amp;display=swap"
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
					"accent-navy" : "#0a2540",
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
</style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 font-display">
	<div class="flex h-screen">
		<!-- Sidebar Navigation -->
		<jsp:include page="studentNavbar.jsp" />
		<!-- Main Content Area -->
		<main class="flex-1 overflow-y-auto">
			<!-- Top Header Bar -->
			<header
				class="bg-white dark:bg-slate-900 border-b border-slate-200 dark:border-slate-800 sticky top-0 z-10 px-6 py-4 flex items-center justify-between">
				<div class="flex items-center gap-4">
					<button
						class="flex items-center gap-2 px-3 py-1.5 rounded-lg border border-slate-200 dark:border-slate-700 hover:bg-slate-50 dark:hover:bg-slate-800 transition-colors text-slate-600 dark:text-slate-400">
						<span class="material-symbols-outlined text-[18px]">arrow_back</span>
						<span class="text-sm font-medium">Back to Dashboard</span>
					</button>
					<div class="h-6 w-px bg-slate-200 dark:bg-slate-700"></div>
					<h2 class="text-lg font-bold text-accent-navy dark:text-white">Application
						Details</h2>
				</div>
				<div class="flex items-center gap-3">
					<button
						class="p-2 text-slate-500 hover:bg-slate-50 dark:hover:bg-slate-800 rounded-full transition-colors relative">
						<span class="material-symbols-outlined">notifications</span> <span
							class="absolute top-2 right-2 w-2 h-2 bg-red-500 rounded-full border-2 border-white dark:border-slate-900"></span>
					</button>
					<button
						class="flex items-center gap-2 px-4 py-2 bg-primary text-white text-sm font-bold rounded-lg hover:bg-blue-700 transition-colors shadow-sm shadow-primary/20">
						<span class="material-symbols-outlined text-[18px]">check_circle</span>
						Update Status
					</button>
				</div>
			</header>
			<div class="p-6 space-y-6 max-w-7xl mx-auto">
				<!-- Application Details Section -->
				<section
					class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 p-6 space-y-4">
					<div
						class="flex items-center gap-2 mb-2 pb-2 border-b border-slate-100 dark:border-slate-800">
						<span class="material-symbols-outlined text-primary">assignment</span>
						<h3 class="font-bold text-lg text-accent-navy dark:text-white">Application
							Details</h3>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-3 gap-6">
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Application
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200">APP-<%= d.getApplicationId() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Job
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-primary"><%= d.getJobId()%></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Status</label>
							<div
								class="bg-blue-50 dark:bg-blue-900/20 border border-blue-100 dark:border-blue-800 rounded-lg px-4 py-2.5 text-sm font-bold text-blue-600 dark:text-blue-400"><%= d.getApplicationStatus()%></div>
						</div>
					</div>
				</section>
				<!-- Student Information Section -->
				<section
					class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 p-6 space-y-4">
					<div
						class="flex items-center gap-2 mb-2 pb-2 border-b border-slate-100 dark:border-slate-800">
						<span class="material-symbols-outlined text-primary">person</span>
						<h3 class="font-bold text-lg text-accent-navy dark:text-white">Student
							Information</h3>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
						<div class="space-y-1 md:col-span-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">PRN</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getStudentPrn() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">First
								Name</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getFirstName() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Last
								Name</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getLastName() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Program
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getProgramName() %></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Email</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getStudentEmail() %></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Contact</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200">+91
								<%= d.getStudentContact() %></div>
						</div>
						<div class="space-y-1 md:col-span-4">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Address</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200 leading-relaxed"><%= d.getStudentAddress() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Bachelor
								CGPA</label>
							<div
								class="bg-primary/5 border border-primary/20 rounded-lg px-4 py-2.5 text-sm font-bold text-primary"><%= d.getBachelorCgpa() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Postgrad
								CGPA</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-400"><%= d.getPostgradCgpa() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">SSC
								%</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getSscPercentage() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">HSC
								%</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-slate-800 dark:text-slate-200"><%= d.getHscPercentage() %></div>
						</div>
					</div>
				</section>
				<!-- Job Information Section -->
				<section
					class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 p-6 space-y-4">
					<div
						class="flex items-center gap-2 mb-2 pb-2 border-b border-slate-100 dark:border-slate-800">
						<span class="material-symbols-outlined text-primary">work</span>
						<h3 class="font-bold text-lg text-accent-navy dark:text-white">Job
							Information</h3>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Job
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getJobId() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Company
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getCompanyId() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Role</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-bold text-accent-navy dark:text-white"><%= d.getRole() %></div>
						</div>
						<div class="space-y-1 md:col-span-3">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Description</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-xs text-slate-600 dark:text-slate-400 italic leading-relaxed"><%= d.getDescription() %></div>
						</div>
						<!--   <div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Vacancy</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getVacancy() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Openings</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%=d.getOpenings() %></div>
						</div>-->
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Approval
								Status</label>
							<div
								class="bg-green-50 dark:bg-green-900/20 border border-green-100 dark:border-green-800 rounded-lg px-4 py-2.5 text-sm font-bold text-green-600">APPROVED</div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Location</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getLocation() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Type</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getType() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Job Status</label>
							<div
								class="bg-green-50 dark:bg-green-900/20 border border-green-100 dark:border-green-800 rounded-lg px-4 py-2.5 text-sm font-bold text-green-600 uppercase"><%= d.getJobStatus()%></div>
						</div>
					</div>
				</section>
				<!-- Company Information Section -->
				<section
					class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 p-6 space-y-4">
					<div
						class="flex items-center gap-2 mb-2 pb-2 border-b border-slate-100 dark:border-slate-800">
						<span class="material-symbols-outlined text-primary">apartment</span>
						<h3 class="font-bold text-lg text-accent-navy dark:text-white">Company
							Information</h3>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Company
								ID</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getCompanyId() %></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Name</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-bold">
								<%= d.getCompanyName() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Status</label>
							<div
								class="bg-primary/10 border border-primary/20 rounded-lg px-4 py-2.5 text-[10px] font-bold text-primary text-center"><%= d.getCompanyStatus() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Representative</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold">
								<%= d.getRepresentative() %></div>
						</div>
						<div class="space-y-1">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Contact</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold">+91
								<%= d.getCompanyContact()%></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Email</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-primary underline"><%= d.getCompanyEmail() %></div>
						</div>
						<div class="space-y-1 md:col-span-4">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Address</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getCompanyAddress()%></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">Website</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold text-primary"><%= d.getWebsite() %></div>
						</div>
						<div class="space-y-1 md:col-span-2">
							<label
								class="text-[10px] font-bold text-slate-500 uppercase tracking-wider px-1">PRN</label>
							<div
								class="bg-slate-50 dark:bg-slate-800/50 border border-slate-200 dark:border-slate-700 rounded-lg px-4 py-2.5 text-sm font-semibold"><%= d.getCompanyPrn()%></div>
						</div>
					</div>
				</section>
			</div>
			<!-- Footer -->
			<footer class="p-6 text-center text-slate-400 text-xs">
				<p>© 2026 MIT-World Peace University (MIT-WPU). Placement
					Administration System.</p>
			</footer>
		</main>
	</div>
</body>
</html>