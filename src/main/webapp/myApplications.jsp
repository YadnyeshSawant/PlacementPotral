<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<p class="text-sm font-bold text-slate-900 dark:text-white">Alex
								Johnson</p>
							<p class="text-xs text-slate-500">B.Tech Computer Science</p>
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
						<p class="text-2xl font-bold text-slate-900 dark:text-white">08</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">In
							Progress</p>
						<p class="text-2xl font-bold text-blue-600">03</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">Offered</p>
						<p class="text-2xl font-bold text-green-600">01</p>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-5 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<p
							class="text-xs text-slate-500 font-bold uppercase tracking-wide mb-1">Rejected</p>
						<p class="text-2xl font-bold text-red-600">04</p>
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
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5"><span
											class="text-sm font-mono font-medium text-slate-600 dark:text-slate-400">#APP-8902</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-8 h-8 rounded bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden flex-shrink-0">
													<img class="w-6 h-6 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuB2aLlny87qD7huRyB1c2yWigIw7dWkC-BOqu5o1qwTg4c6ICQ3UwvhVjJLtafjSa5MOBOay7e08pVqnsvtW6HwLDUO1C8t750YSa2H5-9QD51P0Ymn2gOf9P2MrRSdVouflXDLg5EMFsoPHSBZ4oJXID8qQO6_AekJgif12iN32fS5945_k6VVWB4EUlaBKanp2XQ96qBoh9sk6Mt-z7qXWv-725XY6IlHVbZSzUDsqmnqiSWjVMsJ34J9EqMA4P5TGz-1erDsgxE" />
												</div>
												<div class="min-w-0">
													<p
														class="text-sm font-bold text-slate-900 dark:text-white truncate">TechCorp
														Systems</p>
													<p class="text-[10px] text-slate-500">CID: COMP-102</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="flex flex-col">
												<span
													class="text-sm font-semibold text-slate-900 dark:text-white">Software
													Engineer I</span> <span class="text-xs text-slate-500">Full-time
													• #JOB-1024</span>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="text-sm text-slate-600 dark:text-slate-400">San
												Francisco, CA</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2.5 py-1 bg-slate-100 text-slate-600 dark:bg-slate-800 dark:text-slate-400 text-xs font-bold rounded-full">Applied</span>
										</td>
										<td class="px-6 py-5 text-right">
											<button
												class="text-primary hover:text-blue-700 text-sm font-bold transition-colors">View
												Details</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5"><span
											class="text-sm font-mono font-medium text-slate-600 dark:text-slate-400">#APP-7721</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-8 h-8 rounded bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden flex-shrink-0">
													<img class="w-6 h-6 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuAUAolhUr4P-DZAVaVsiGsanmeHdUr3t4VLlQ3rA_WRiE1V2JJFUCs7SDB4_Hz0I-v-ySGrgYZ108979p95t8Ta_WIZ3Z7OhvaUZY5CubHicVwyXVbVXGaVOijw8ar1CiO4YR8SGCYUuDhCh82WGrVLMK6NQC2CkZDCM40DntT9mI4Tm6IjHp6N1xEMvAgWCh1hF0QKVm_it0kTfQEZtc29BwZhBz7s4a0JYsPn0aze11r7De_y3li9kyaxGQzTEC99r8uv-9HZQXA" />
												</div>
												<div class="min-w-0">
													<p
														class="text-sm font-bold text-slate-900 dark:text-white truncate">Nexus
														Data Solutions</p>
													<p class="text-[10px] text-slate-500">CID: COMP-441</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="flex flex-col">
												<span
													class="text-sm font-semibold text-slate-900 dark:text-white">Data
													Analyst</span> <span class="text-xs text-slate-500">Internship
													• #JOB-2281</span>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="text-sm text-slate-600 dark:text-slate-400">Bangalore,
												IN</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2.5 py-1 bg-blue-100 text-blue-600 dark:bg-blue-900/30 dark:text-blue-400 text-xs font-bold rounded-full">Interviewing</span>
										</td>
										<td class="px-6 py-5 text-right">
											<button
												class="text-primary hover:text-blue-700 text-sm font-bold transition-colors">View
												Details</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5"><span
											class="text-sm font-mono font-medium text-slate-600 dark:text-slate-400">#APP-6540</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-8 h-8 rounded bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden flex-shrink-0">
													<img class="w-6 h-6 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuC8LM1iwtWjhiRwVUwlrgC8Lr8fWrujErwDkaKwmNR68Dbubt58IktXlyhp8OCjjrksWuK57mQFDGdgLVHrFBLXuOzYnhaNnimvspN-YvAwz-G8ZWpf57nkts49kt3HWM0UEz5UKqnvoqf56WwQEKM-Te3LnysMKFVOnxAWyWcedvHSz9F_b1ltFEOj7ng-zCxASzQkM2tQB59sT5fyaMoa9C80hiNE_3F1YgGELgZb4TwOufMDuPjZRIBueOkp0shSmQimQAN7sZg" />
												</div>
												<div class="min-w-0">
													<p
														class="text-sm font-bold text-slate-900 dark:text-white truncate">Creative
														Labs</p>
													<p class="text-[10px] text-slate-500">CID: COMP-092</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="flex flex-col">
												<span
													class="text-sm font-semibold text-slate-900 dark:text-white">UI/UX
													Designer</span> <span class="text-xs text-slate-500">Full-time
													• #JOB-3392</span>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="text-sm text-slate-600 dark:text-slate-400">Austin,
												TX</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2.5 py-1 bg-green-100 text-green-600 dark:bg-green-900/30 dark:text-green-400 text-xs font-bold rounded-full">Offered</span>
										</td>
										<td class="px-6 py-5 text-right">
											<button
												class="text-primary hover:text-blue-700 text-sm font-bold transition-colors">View
												Details</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5"><span
											class="text-sm font-mono font-medium text-slate-600 dark:text-slate-400">#APP-4311</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-8 h-8 rounded bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden flex-shrink-0">
													<img class="w-6 h-6 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuCPoGZZAE1toWhNPIkGw301bx4U_rxXCIpfCPW8bxbBTPCUNSVALLrC9xhPUcC0JthATO2vIBh4AExlnzZbxFMCe2bZLsbnrYwtSq-Rk8VYZz8O1n4LrCQLmBUDK6VMsIgB9r_8Fz17sjfbW9Qekl5UlF2BG2yCz2OMehYjeX8kOhGUpbnKmVDIzNxI5ICdNK_IyhINARwYYMn6LE6qeD1W6CDN7vJAmCsLBkz9KxLrAKqIqdNWG0-pTlNpFJgsyz6KIeoORT2DlEc" />
												</div>
												<div class="min-w-0">
													<p
														class="text-sm font-bold text-slate-900 dark:text-white truncate">InfiniScale
														Ltd.</p>
													<p class="text-[10px] text-slate-500">CID: COMP-771</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="flex flex-col">
												<span
													class="text-sm font-semibold text-slate-900 dark:text-white">Cloud
													Intern</span> <span class="text-xs text-slate-500">Internship
													• #JOB-4410</span>
											</div>
										</td>
										<td class="px-6 py-5">
											<div class="text-sm text-slate-600 dark:text-slate-400">London,
												UK</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2.5 py-1 bg-red-100 text-red-600 dark:bg-red-900/30 dark:text-red-400 text-xs font-bold rounded-full">Rejected</span>
										</td>
										<td class="px-6 py-5 text-right">
											<button
												class="text-primary hover:text-blue-700 text-sm font-bold transition-colors">View
												Details</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div
							class="px-6 py-4 bg-slate-50 dark:bg-slate-800/50 border-t border-slate-200 dark:border-slate-800 flex items-center justify-between">
							<p class="text-xs text-slate-500 font-medium">Showing 4 of 8
								total applications</p>
							<div class="flex gap-2">
								<button
									class="p-1 rounded border border-slate-300 dark:border-slate-700 text-slate-500 disabled:opacity-50"
									disabled="">
									<span class="material-symbols-outlined text-sm">chevron_left</span>
								</button>
								<button
									class="p-1 rounded border border-slate-300 dark:border-slate-700 text-slate-500 hover:bg-slate-100 dark:hover:bg-slate-800">
									<span class="material-symbols-outlined text-sm">chevron_right</span>
								</button>
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