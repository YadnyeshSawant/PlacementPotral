<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Manage Job Openings - Campus Placement Portal</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Lexend:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    colors: {
                        "primary": "#195de6",
                        "background-light": "#f6f6f8",
                        "background-dark": "#111621",
                        "success": "#10b981",
                        "warning": "#f59e0b",
                        "danger": "#ef4444"
                    },
                    fontFamily: {
                        "display": ["Lexend", "sans-serif"]
                    },
                    borderRadius: {
                        "DEFAULT": "0.25rem",
                        "lg": "0.5rem",
                        "xl": "0.75rem",
                        "full": "9999px"
                    },
                },
            },
        }
    </script>
<style type="text/tailwindcss">
        body {
            font-family: 'Lexend', sans-serif;
        }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
        .toggle-checkbox:checked {
            right: 0;
            background-color: #10b981;
        }
        .toggle-checkbox:checked + .toggle-label {
            background-color: #10b981;
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-[#111318] font-display">
	<div class="flex min-h-screen">
		<!-- Sidebar Navigation -->
		<jsp:include page="companyNavbar.jsp" />
		<!-- Main Content Area -->
		<main class="flex-1 ml-64">
			<!-- Top Navbar -->
			<header
				class="h-16 bg-white dark:bg-gray-900 border-b border-gray-200 dark:border-gray-800 flex items-center justify-between px-8 sticky top-0 z-10">
				<div class="flex items-center gap-4">
					<div
						class="flex items-center gap-2 text-gray-500 text-sm font-medium">
						<span>Dashboard</span> <span
							class="material-symbols-outlined text-xs">chevron_right</span> <span
							class="text-gray-900 dark:text-white font-bold">Recruitment
							Hub</span>
					</div>
				</div>
				<div class="flex items-center gap-6">
					<div class="relative w-64">
						<span
							class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 text-xl">search</span>
						<input
							class="w-full bg-gray-100 dark:bg-gray-800 border-none rounded-lg py-2 pl-10 pr-4 text-sm focus:ring-2 focus:ring-primary"
							placeholder="Search applications..." type="text" />
					</div>
					<div class="flex items-center gap-3">
						<button
							class="p-2 text-gray-500 hover:bg-gray-100 dark:hover:bg-gray-800 rounded-lg relative">
							<span class="material-symbols-outlined">notifications</span> <span
								class="absolute top-2 right-2 w-2 h-2 bg-red-500 rounded-full border-2 border-white"></span>
						</button>
						<div class="w-px h-6 bg-gray-200 dark:bg-gray-700 mx-1"></div>
						<div class="flex items-center gap-3 cursor-pointer">
							<div class="text-right">
								<p class="text-xs font-bold leading-none">Sarah Jenkins</p>
								<p class="text-[10px] text-gray-500">Talent Acquisition</p>
							</div>
							<div
								class="size-8 rounded-full bg-cover bg-center border border-gray-200"
								data-alt="Professional headshot of talent acquisition manager"
								style="background-image: url('https://lh3.googleusercontent.com/aida-public/AB6AXuDsDruZ6N3C1nyg5wgfGdci3KWga1dRal5MPYn7Rk3IjzMWqChPk9fxgdC082AHdjpPQTZnWr6FcoZVHxC0rKEFhXMyuZP4Sn_rH4_qmOhQ03RgRBoRG8CLj99LGl9vBuKXdWt9nIrSx6_hBjTM36YmQ4h-gCMTw6uVnqx1WAMxm08wQriQFxkE-mN-QPqgLNvDT2kkuIZcSbjfuoqwyFIiDTpawZr0ApGhQobgj7FMQ-SmrbfMobDLBv0gfe94WiV_9KuHkOCvDpk')"></div>
						</div>
					</div>
				</div>
			</header>
			<div class="p-8 space-y-8">
				<main class="flex-1 px-4 sm:px-6 lg:px-8 py-8 overflow-hidden">
					<div
						class="flex flex-col md:flex-row md:items-end justify-between gap-4 mb-8">
						<div>
							<nav class="flex items-center gap-2 mb-2">
								<a
									class="text-[#636f88] dark:text-gray-400 text-xs font-medium hover:text-primary"
									href="#">Console</a> <span
									class="text-[#636f88] dark:text-gray-600 material-symbols-outlined text-xs">chevron_right</span>
								<span class="text-primary text-xs font-medium">Manage
									Jobs</span>
							</nav>
							<h2 class="text-3xl font-black tracking-tight mb-1">Manage
								Job Openings</h2>
							<p class="text-[#636f88] dark:text-gray-400 text-sm">Create,
								monitor, and manage your current recruitment drives.</p>
						</div>
						<button
							class="flex items-center gap-2 bg-primary text-white px-6 py-2.5 rounded-lg font-bold text-sm hover:bg-blue-700 transition-all shadow-md">
							<span class="material-symbols-outlined text-lg">add</span> Post
							New Job
						</button>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
						<div
							class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 p-4 rounded-xl shadow-sm">
							<p
								class="text-xs text-gray-500 font-medium mb-1 uppercase tracking-wider">Total
								Listings</p>
							<p class="text-2xl font-bold">12</p>
						</div>
						<div
							class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 p-4 rounded-xl shadow-sm border-l-4 border-l-primary">
							<p
								class="text-xs text-gray-500 font-medium mb-1 uppercase tracking-wider">Active
								Openings</p>
							<p class="text-2xl font-bold">08</p>
						</div>
						<div
							class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 p-4 rounded-xl shadow-sm border-l-4 border-l-warning">
							<p
								class="text-xs text-gray-500 font-medium mb-1 uppercase tracking-wider">Pending
								Review</p>
							<p class="text-2xl font-bold">03</p>
						</div>
						<div
							class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 p-4 rounded-xl shadow-sm border-l-4 border-l-danger">
							<p
								class="text-xs text-gray-500 font-medium mb-1 uppercase tracking-wider">Filled
								/ Closed</p>
							<p class="text-2xl font-bold">01</p>
						</div>
					</div>
					<div
						class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 rounded-xl p-4 mb-6 shadow-sm">
						<div class="flex flex-col lg:flex-row gap-4 items-center">
							<div class="relative w-full lg:flex-1">
								<div
									class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
									<span class="material-symbols-outlined text-[#636f88] text-xl">search</span>
								</div>
								<input
									class="w-full bg-[#f0f2f4] dark:bg-gray-800 border-none rounded-lg py-2.5 pl-12 pr-4 focus:ring-2 focus:ring-primary text-sm"
									placeholder="Search by Job ID, Role, or Location..."
									type="text">
							</div>
							<div class="flex gap-2 w-full lg:w-auto">
								<select
									class="bg-[#f0f2f4] dark:bg-gray-800 border-none rounded-lg text-sm px-4 py-2.5 focus:ring-2 focus:ring-primary pr-10 cursor-pointer">
									<option>All Approval Status</option>
									<option>Approved</option>
									<option>Pending</option>
									<option>Rejected</option>
								</select> <select
									class="bg-[#f0f2f4] dark:bg-gray-800 border-none rounded-lg text-sm px-4 py-2.5 focus:ring-2 focus:ring-primary pr-10 cursor-pointer">
									<option>All Job Status</option>
									<option>Open</option>
									<option>Closed</option>
								</select>
							</div>
						</div>
					</div>
					<div
						class="bg-white dark:bg-background-dark border border-[#f0f2f4] dark:border-gray-800 rounded-xl shadow-sm overflow-hidden">
						<div class="overflow-x-auto">
							<table class="w-full text-left border-collapse">
								<thead>
									<tr
										class="border-b border-[#f0f2f4] dark:border-gray-800 bg-[#fbfbfc] dark:bg-gray-900/50">
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Job
											ID</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Role</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Location</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Type</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Vacancy
											/ Openings</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Approval</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400">Job
											Status</th>
										<th
											class="px-6 py-4 text-[11px] font-bold uppercase tracking-wider text-[#636f88] dark:text-gray-400 text-right">Actions</th>
									</tr>
								</thead>
								<tbody class="divide-y divide-[#f0f2f4] dark:divide-gray-800">
									<tr
										class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors">
										<td class="px-6 py-5 text-sm font-medium text-[#636f88]">#JOB-2401</td>
										<td class="px-6 py-5">
											<p class="text-sm font-bold text-gray-900 dark:text-white">Software
												Engineer I</p>
											<p class="text-xs text-gray-500">Fullstack Development</p>
										</td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-xs text-gray-600 dark:text-gray-400">
												<span class="material-symbols-outlined text-sm">location_on</span>
												Pune, India
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2 py-0.5 rounded bg-blue-50 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 text-[10px] font-bold uppercase">On-site</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-2">
												<span class="text-sm font-bold">15</span> <span
													class="text-xs text-gray-400">/ 45 Openings</span>
											</div>
											<div
												class="w-24 h-1.5 bg-gray-100 dark:bg-gray-800 rounded-full mt-2 overflow-hidden">
												<div class="bg-primary h-full w-[33%]"></div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="inline-flex items-center gap-1.5 px-2 py-1 rounded-full bg-emerald-50 dark:bg-emerald-900/30 text-success text-[10px] font-bold uppercase">
												<span class="w-1 h-1 rounded-full bg-success"></span>
												Approved
										</span></td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="relative inline-block w-10 h-5 align-middle select-none transition duration-200 ease-in">
													<input checked=""
														class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-2 appearance-none cursor-pointer border-gray-300 focus:outline-none"
														id="toggle1" name="toggle1" type="checkbox"> <label
														class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer"
														for="toggle1"></label>
												</div>
												<span class="text-xs font-bold text-success uppercase">Open</span>
											</div>
										</td>
										<td class="px-6 py-5 text-right">
											<div class="flex justify-end gap-2">
												<button
													class="p-2 text-gray-400 hover:text-primary transition-colors hover:bg-blue-50 dark:hover:bg-blue-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">edit</span>
												</button>
												<button
													class="p-2 text-gray-400 hover:text-danger transition-colors hover:bg-red-50 dark:hover:bg-red-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">delete</span>
												</button>
											</div>
										</td>
									</tr>
									<tr
										class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors">
										<td class="px-6 py-5 text-sm font-medium text-[#636f88]">#JOB-2405</td>
										<td class="px-6 py-5">
											<p class="text-sm font-bold text-gray-900 dark:text-white">Data
												Analyst Intern</p>
											<p class="text-xs text-gray-500">Business Intelligence</p>
										</td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-xs text-gray-600 dark:text-gray-400">
												<span class="material-symbols-outlined text-sm">location_on</span>
												Remote
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2 py-0.5 rounded bg-purple-50 dark:bg-purple-900/30 text-purple-600 dark:text-purple-400 text-[10px] font-bold uppercase">Internship</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-2">
												<span class="text-sm font-bold">05</span> <span
													class="text-xs text-gray-400">/ 05 Openings</span>
											</div>
											<div
												class="w-24 h-1.5 bg-gray-100 dark:bg-gray-800 rounded-full mt-2 overflow-hidden">
												<div class="bg-success h-full w-full"></div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="inline-flex items-center gap-1.5 px-2 py-1 rounded-full bg-amber-50 dark:bg-amber-900/30 text-warning text-[10px] font-bold uppercase">
												<span class="w-1 h-1 rounded-full bg-warning"></span>
												Pending
										</span></td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="relative inline-block w-10 h-5 align-middle select-none transition duration-200 ease-in">
													<input
														class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-2 appearance-none cursor-pointer border-gray-300 focus:outline-none"
														id="toggle2" name="toggle2" type="checkbox"> <label
														class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer"
														for="toggle2"></label>
												</div>
												<span class="text-xs font-bold text-gray-400 uppercase">Closed</span>
											</div>
										</td>
										<td class="px-6 py-5 text-right">
											<div class="flex justify-end gap-2">
												<button
													class="p-2 text-gray-400 hover:text-primary transition-colors hover:bg-blue-50 dark:hover:bg-blue-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">edit</span>
												</button>
												<button
													class="p-2 text-gray-400 hover:text-danger transition-colors hover:bg-red-50 dark:hover:bg-red-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">delete</span>
												</button>
											</div>
										</td>
									</tr>
									<tr
										class="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors">
										<td class="px-6 py-5 text-sm font-medium text-[#636f88]">#JOB-2398</td>
										<td class="px-6 py-5">
											<p class="text-sm font-bold text-gray-900 dark:text-white">Product
												Designer (UI/UX)</p>
											<p class="text-xs text-gray-500">Creative Design Team</p>
										</td>
										<td class="px-6 py-5">
											<div
												class="flex items-center gap-1 text-xs text-gray-600 dark:text-gray-400">
												<span class="material-symbols-outlined text-sm">location_on</span>
												Hybrid
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="px-2 py-0.5 rounded bg-orange-50 dark:bg-orange-900/30 text-orange-600 dark:text-orange-400 text-[10px] font-bold uppercase">Contract</span>
										</td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-2">
												<span class="text-sm font-bold">02</span> <span
													class="text-xs text-gray-400">/ 10 Openings</span>
											</div>
											<div
												class="w-24 h-1.5 bg-gray-100 dark:bg-gray-800 rounded-full mt-2 overflow-hidden">
												<div class="bg-primary h-full w-[20%]"></div>
											</div>
										</td>
										<td class="px-6 py-5"><span
											class="inline-flex items-center gap-1.5 px-2 py-1 rounded-full bg-emerald-50 dark:bg-emerald-900/30 text-success text-[10px] font-bold uppercase">
												<span class="w-1 h-1 rounded-full bg-success"></span>
												Approved
										</span></td>
										<td class="px-6 py-5">
											<div class="flex items-center gap-3">
												<div
													class="relative inline-block w-10 h-5 align-middle select-none transition duration-200 ease-in">
													<input checked=""
														class="toggle-checkbox absolute block w-5 h-5 rounded-full bg-white border-2 appearance-none cursor-pointer border-gray-300 focus:outline-none"
														id="toggle3" name="toggle3" type="checkbox"> <label
														class="toggle-label block overflow-hidden h-5 rounded-full bg-gray-300 cursor-pointer"
														for="toggle3"></label>
												</div>
												<span class="text-xs font-bold text-success uppercase">Open</span>
											</div>
										</td>
										<td class="px-6 py-5 text-right">
											<div class="flex justify-end gap-2">
												<button
													class="p-2 text-gray-400 hover:text-primary transition-colors hover:bg-blue-50 dark:hover:bg-blue-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">edit</span>
												</button>
												<button
													class="p-2 text-gray-400 hover:text-danger transition-colors hover:bg-red-50 dark:hover:bg-red-900/20 rounded-lg">
													<span class="material-symbols-outlined text-xl">delete</span>
												</button>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div
							class="px-6 py-4 bg-[#fbfbfc] dark:bg-gray-900/50 border-t border-[#f0f2f4] dark:border-gray-800 flex items-center justify-between">
							<p class="text-sm text-[#636f88] dark:text-gray-400">
								Showing <span class="font-bold text-[#111318] dark:text-white">1</span>
								to <span class="font-bold text-[#111318] dark:text-white">3</span>
								of <span class="font-bold text-[#111318] dark:text-white">12</span>
								job openings
							</p>
							<div class="flex gap-2">
								<button
									class="px-3 py-1.5 rounded border border-[#f0f2f4] dark:border-gray-800 text-sm font-medium hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors disabled:opacity-50"
									disabled="">Previous</button>
								<button
									class="px-3 py-1.5 rounded bg-primary text-white text-sm font-bold shadow-sm">1</button>
								<button
									class="px-3 py-1.5 rounded border border-[#f0f2f4] dark:border-gray-800 text-sm font-medium hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors text-gray-600 dark:text-gray-400">2</button>
								<button
									class="px-3 py-1.5 rounded border border-[#f0f2f4] dark:border-gray-800 text-sm font-medium hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors text-gray-600 dark:text-gray-400">Next</button>
							</div>
						</div>
					</div>
				</main>

			</div>
		</main>
	</div>
</body>
</html>