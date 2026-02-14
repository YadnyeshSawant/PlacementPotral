<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="flex items-center gap-4">
					<button
						class="flex items-center gap-2 text-slate-500 hover:text-primary transition-colors font-semibold text-sm">
						Student Dashboard</button>
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
				<section class="mb-8">
					<div
						class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 overflow-hidden">
						<div class="h-2 bg-primary"></div>
						<div class="p-6">
							<div
								class="flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
								<div class="flex items-center gap-6">
									<div
										class="p-4 bg-slate-50 dark:bg-slate-800 rounded-xl border border-slate-100 dark:border-slate-700 hidden sm:block">
										<span class="material-symbols-outlined text-primary text-4xl">account_circle</span>
									</div>
									<div class="grid grid-cols-1 sm:grid-cols-3 gap-8">
										<div>
											<p
												class="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-1">Student
												ID</p>
											<p class="text-slate-900 dark:text-white font-bold">${student.prn}</p>
										</div>
										<div>
											<p
												class="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-1">Full
												Name</p>
											<p class="text-slate-900 dark:text-white font-bold">${student.firstName}
												${student.lastName}</p>
										</div>
										<div>
											<p
												class="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-1">Academic
												Program</p>
											<p class="text-slate-900 dark:text-white font-bold">${student.programName}</p>
										</div>
									</div>
								</div>
								<a href="EditStudentProfile"><button
										class="flex items-center gap-2 px-6 py-2.5 bg-primary hover:bg-blue-700 text-white rounded-xl text-sm font-bold transition-all shadow-md shadow-primary/10">
										<span class="material-symbols-outlined text-sm">edit</span>
										Edit Profile
									</button></a>
							</div>
						</div>
					</div>
				</section>
				<!-- Job Openings Section -->
				<!-- Job Openings Section -->
				<div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
					<!-- Upcoming Deadlines Section -->
					<section
						class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 flex flex-col">
						<div class="p-6 border-b border-slate-100 dark:border-slate-800">
							<h3
								class="text-lg font-bold text-slate-900 dark:text-white flex items-center gap-2">
								<span class="material-symbols-outlined text-red-500">timer</span>
								Upcoming Deadlines
							</h3>
						</div>
						<div class="p-6 flex flex-col gap-4">
							<div
								class="flex items-center justify-between p-3 rounded-lg bg-red-50 dark:bg-red-900/10 border border-red-100 dark:border-red-900/20">
								<div>
									<p class="text-sm font-bold text-slate-900 dark:text-white">Resume
										Submission: Google Africa</p>
									<p class="text-xs text-slate-500">Software Engineering
										Intern</p>
								</div>
								<span
									class="px-2 py-1 bg-red-500 text-white text-[10px] font-bold rounded uppercase tracking-wider">Ends
									in 4 hours</span>
							</div>
							<div
								class="flex items-center justify-between p-3 rounded-lg bg-slate-50 dark:bg-slate-800/50 border border-slate-100 dark:border-slate-800">
								<div>
									<p class="text-sm font-bold text-slate-900 dark:text-white">Career
										Workshop: LinkedIn Strategy</p>
									<p class="text-xs text-slate-500">Online Webinar</p>
								</div>
								<div class="text-right">
									<p class="text-xs font-bold text-primary">Tomorrow</p>
									<p class="text-[10px] text-slate-500">10:00 AM</p>
								</div>
							</div>
							<div
								class="flex items-center justify-between p-3 rounded-lg bg-slate-50 dark:bg-slate-800/50 border border-slate-100 dark:border-slate-800">
								<div>
									<p class="text-sm font-bold text-slate-900 dark:text-white">Mock
										Interview: TechCorp</p>
									<p class="text-xs text-slate-500">On-campus Placement Cell</p>
								</div>
								<div class="text-right">
									<p class="text-xs font-bold text-slate-700 dark:text-slate-300">Oct
										24, 2024</p>
									<p class="text-[10px] text-slate-500">02:30 PM</p>
								</div>
							</div>
						</div>
					</section>
					<!-- Profile Completeness Section -->
					<section
						class="bg-white dark:bg-slate-900 rounded-xl shadow-sm border border-slate-200 dark:border-slate-800 p-8 flex flex-col items-center justify-center text-center">
						<h3
							class="text-lg font-bold text-slate-900 dark:text-white mb-6 w-full text-left">Profile
							Completeness</h3>
						<div class="relative flex items-center justify-center mb-6">
							<svg class="w-32 h-32 transform -rotate-90">
<circle class="text-slate-100 dark:text-slate-800" cx="64" cy="64"
									fill="transparent" r="58" stroke="currentColor"
									stroke-width="8"></circle>
<circle class="text-primary transition-all duration-500" cx="64" cy="64"
									fill="transparent" r="58" stroke="currentColor"
									stroke-dasharray="364.4" stroke-dashoffset="91.1"
									stroke-width="8"></circle>
</svg>
							<div class="absolute flex flex-col items-center">
								<span class="text-2xl font-black text-slate-900 dark:text-white">75%</span>
							</div>
						</div>
						<p class="text-sm text-slate-500 mb-6">Your profile is almost
							ready! Add your certifications to reach 100%.</p>
						<button
							class="w-full py-3 px-6 bg-primary hover:bg-blue-700 text-white font-bold rounded-lg transition-all shadow-md shadow-primary/20">
							Update Profile</button>
					</section>
				</div>
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
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Pending
									Review</p>
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
</body>
</html>