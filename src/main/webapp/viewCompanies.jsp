<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Company Directory - Campus Placement Portal</title>
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
					<h2 class="text-xl font-bold text-slate-800 dark:text-white">Company
						Directory</h2>
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
					<div
						class="flex items-center gap-3 border-l border-slate-200 dark:border-slate-800 pl-6">
						<div class="text-right">
							<p class="text-sm font-bold text-slate-900 dark:text-white">Alex
								Johnson</p>
							<p class="text-xs text-slate-500">B.Tech Computer Science</p>
						</div>
						<div
							class="w-10 h-10 rounded-full bg-slate-200 dark:bg-slate-800 bg-cover bg-center border-2 border-primary/20"
							style='background-image: url("https://lh3.googleusercontent.com/aida-public/AB6AXuBe3ypwsvMUkk-6FbCiHsddWB1oi-4i_NVtN-2k-XlbMr3HqJ1YpLjwglno1GeM05ayvaBz2E1ls4TYruCJhZ9OURf2nP2dLRJkmTCkx0YY8Szdm3N_2WR9HtGSWLz-EDQnhMiQkKiUnqI1OTex6qnM3mXyxumeBSCFIwf5WgcxXO-TIor6cnn_VeqpNWsIaBifkrpybsUuvwx3fzXQ-hxqUgCliV-WZfIpgWNHfyrwQhgP4rxEuGZQOYvZSTYCQjGBSXNLYPCdH-4");'>
						</div>
					</div>
				</div>
			</header>
			<div class="p-8 max-w-7xl mx-auto w-full">
				<div class="flex flex-col md:flex-row gap-4 mb-8">
					<div class="flex-1">
						<label
							class="flex items-center h-12 w-full rounded-lg shadow-sm border border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 overflow-hidden focus-within:ring-2 focus-within:ring-primary/50 transition-all">
							<div class="text-slate-400 pl-4 flex items-center">
								<span class="material-symbols-outlined">search</span>
							</div> <input
							class="w-full border-none focus:ring-0 bg-transparent text-sm font-normal text-slate-900 dark:text-white placeholder:text-slate-400 px-4"
							placeholder="Search companies..." />
						</label>
					</div>
					<div class="w-full md:w-64">
						<select
							class="h-12 w-full rounded-lg shadow-sm border border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 text-sm font-medium text-slate-700 dark:text-slate-300 focus:ring-2 focus:ring-primary/50 transition-all">
							<option value="">Filter by Industry</option>
							<option value="tech">Information Technology</option>
							<option value="finance">Banking &amp; Finance</option>
							<option value="health">Healthcare</option>
							<option value="edu">Education</option>
							<option value="mfg">Manufacturing</option>
						</select>
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
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-left">Company</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-left">Industry</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-left">Headquarters</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-center">Total
											Openings</th>
										<th
											class="px-6 py-4 text-xs font-bold text-slate-500 uppercase tracking-wider text-right">Action</th>
									</tr>
								</thead>
								<tbody class="divide-y divide-slate-100 dark:divide-slate-800">
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-12 h-12 rounded-lg bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden border border-slate-200 dark:border-slate-700">
													<img alt="TechCorp Logo" class="w-10 h-10 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuB2aLlny87qD7huRyB1c2yWigIw7dWkC-BOqu5o1qwTg4c6ICQ3UwvhVjJLtafjSa5MOBOay7e08pVqnsvtW6HwLDUO1C8t750YSa2H5-9QD51P0Ymn2gOf9P2MrRSdVouflXDLg5EMFsoPHSBZ4oJXID8qQO6_AekJgif12iN32fS5945_k6VVWB4EUlaBKanp2XQ96qBoh9sk6Mt-z7qXWv-725XY6IlHVbZSzUDsqmnqiSWjVMsJ34J9EqMA4P5TGz-1erDsgxE" />
												</div>
												<div>
													<p class="text-sm font-bold text-slate-900 dark:text-white">TechCorp
														Systems</p>
													<p class="text-xs text-slate-500">Established 2010</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-700 dark:text-slate-300">Information
												Technology</span></td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-slate-600 dark:text-slate-400">
												<span class="material-symbols-outlined text-base">location_on</span>
												<span class="text-sm">San Francisco, CA</span>
											</div>
										</td>
										<td class="px-6 py-5 text-center"><span
											class="text-sm font-bold text-slate-900 dark:text-white">12</span>
										</td>
										<td class="px-6 py-5 text-right">
											<button
												class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
												View Profile</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-12 h-12 rounded-lg bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden border border-slate-200 dark:border-slate-700">
													<img alt="Nexus Data Logo" class="w-10 h-10 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuAUAolhUr4P-DZAVaVsiGsanmeHdUr3t4VLlQ3rA_WRiE1V2JJFUCs7SDB4_Hz0I-v-ySGrgYZ108979p95t8Ta_WIZ3Z7OhvaUZY5CubHicVwyXVbVXGaVOijw8ar1CiO4YR8SGCYUuDhCh82WGrVLMK6NQC2CkZDCM40DntT9mI4Tm6IjHp6N1xEMvAgWCh1hF0QKVm_it0kTfQEZtc29BwZhBz7s4a0JYsPn0aze11r7De_y3li9kyaxGQzTEC99r8uv-9HZQXA" />
												</div>
												<div>
													<p class="text-sm font-bold text-slate-900 dark:text-white">Nexus
														Data Solutions</p>
													<p class="text-xs text-slate-500">Established 2015</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-700 dark:text-slate-300">Data
												Analytics</span></td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-slate-600 dark:text-slate-400">
												<span class="material-symbols-outlined text-base">location_on</span>
												<span class="text-sm">Bangalore, IN</span>
											</div>
										</td>
										<td
											class="px-6 py-5 text-center text-sm font-bold text-slate-900 dark:text-white">
											08</td>
										<td class="px-6 py-5 text-right">
											<button
												class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
												View Profile</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-12 h-12 rounded-lg bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden border border-slate-200 dark:border-slate-700">
													<img alt="Creative Labs Logo"
														class="w-10 h-10 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuC8LM1iwtWjhiRwVUwlrgC8Lr8fWrujErwDkaKwmNR68Dbubt58IktXlyhp8OCjjrksWuK57mQFDGdgLVHrFBLXuOzYnhaNnimvspN-YvAwz-G8ZWpf57nkts49kt3HWM0UEz5UKqnvoqf56WwQEKM-Te3LnysMKFVOnxAWyWcedvHSz9F_b1ltFEOj7ng-zCxASzQkM2tQB59sT5fyaMoa9C80hiNE_3F1YgGELgZb4TwOufMDuPjZRIBueOkp0shSmQimQAN7sZg" />
												</div>
												<div>
													<p class="text-sm font-bold text-slate-900 dark:text-white">Creative
														Labs</p>
													<p class="text-xs text-slate-500">Established 2012</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-700 dark:text-slate-300">Design
												&amp; Media</span></td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-slate-600 dark:text-slate-400">
												<span class="material-symbols-outlined text-base">location_on</span>
												<span class="text-sm">Austin, TX</span>
											</div>
										</td>
										<td
											class="px-6 py-5 text-center text-sm font-bold text-slate-900 dark:text-white">
											04</td>
										<td class="px-6 py-5 text-right">
											<button
												class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
												View Profile</button>
										</td>
									</tr>
									<tr
										class="hover:bg-slate-50/50 dark:hover:bg-slate-800/30 transition-colors">
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="w-12 h-12 rounded-lg bg-slate-100 dark:bg-slate-800 flex items-center justify-center overflow-hidden border border-slate-200 dark:border-slate-700">
													<img alt="Infiniscale Logo"
														class="w-10 h-10 object-contain"
														src="https://lh3.googleusercontent.com/aida-public/AB6AXuCPoGZZAE1toWhNPIkGw301bx4U_rxXCIpfCPW8bxbBTPCUNSVALLrC9xhPUcC0JthATO2vIBh4AExlnzZbxFMCe2bZLsbnrYwtSq-Rk8VYZz8O1n4LrCQLmBUDK6VMsIgB9r_8Fz17sjfbW9Qekl5UlF2BG2yCz2OMehYjeX8kOhGUpbnKmVDIzNxI5ICdNK_IyhINARwYYMn6LE6qeD1W6CDN7vJAmCsLBkz9KxLrAKqIqdNWG0-pTlNpFJgsyz6KIeoORT2DlEc" />
												</div>
												<div>
													<p class="text-sm font-bold text-slate-900 dark:text-white">InfiniScale
														Ltd.</p>
													<p class="text-xs text-slate-500">Established 2018</p>
												</div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="text-sm font-medium text-slate-700 dark:text-slate-300">Cloud
												Services</span></td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-slate-600 dark:text-slate-400">
												<span class="material-symbols-outlined text-base">location_on</span>
												<span class="text-sm">London, UK</span>
											</div>
										</td>
										<td
											class="px-6 py-5 text-center text-sm font-bold text-slate-900 dark:text-white">
											15</td>
										<td class="px-6 py-5 text-right">
											<button
												class="bg-primary hover:bg-blue-700 text-white text-sm font-bold py-2 px-6 rounded-lg transition-all shadow-md shadow-primary/20">
												View Profile</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div
							class="px-6 py-4 bg-slate-50 dark:bg-slate-800/50 border-t border-slate-200 dark:border-slate-800 flex items-center justify-between">
							<p class="text-xs text-slate-500 font-medium">Showing 1 to 4
								of 45 registered companies</p>
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
				<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-8">
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-primary/10 rounded-lg text-primary">
								<span class="material-symbols-outlined">apartment</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Registered
									Companies</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">45</p>
							</div>
						</div>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-green-500/10 rounded-lg text-green-500">
								<span class="material-symbols-outlined">how_to_reg</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Active
									Recruiters</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">128</p>
							</div>
						</div>
					</div>
					<div
						class="bg-white dark:bg-slate-900 p-6 rounded-xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="flex items-center gap-4">
							<div class="p-3 bg-blue-500/10 rounded-lg text-blue-500">
								<span class="material-symbols-outlined">trending_up</span>
							</div>
							<div>
								<p
									class="text-xs text-slate-500 font-bold uppercase tracking-wide">Placements
									(YTD)</p>
								<p class="text-2xl font-bold text-slate-900 dark:text-white">312</p>
							</div>
						</div>
					</div>
				</div>
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