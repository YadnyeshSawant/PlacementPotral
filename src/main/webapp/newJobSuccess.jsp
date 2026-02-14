<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Job Creation Success | Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script id="tailwind-config">
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					"primary" : "#306ee8",
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
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

body {
	font-family: 'Manrope', sans-serif;
}
</style>
</head>
<body class="bg-background-light dark:bg-background-dark min-h-screen">
	<div
		class="relative flex h-auto min-h-screen w-full flex-col group/design-root overflow-x-hidden">
		<div class="layout-container flex h-full grow flex-col">
			<header
				class="flex items-center justify-between whitespace-nowrap border-b border-solid border-b-[#f0f2f4] dark:border-b-gray-800 px-4 md:px-40 py-3 bg-white dark:bg-background-dark">
				<div class="flex items-center gap-4 text-[#111318] dark:text-white">
					<div class="size-6 text-primary">
						<span class="material-symbols-outlined text-3xl">school</span>
					</div>
					<h2
						class="text-[#111318] dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">Campus
						Placement Portal</h2>
				</div>
				<div class="flex flex-1 justify-end gap-4 md:gap-8">
					<div class="flex gap-2">
						<button
							class="flex max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 bg-[#f0f2f4] dark:bg-gray-800 text-[#111318] dark:text-white gap-2 text-sm font-bold leading-normal tracking-[0.015em] min-w-0 px-2.5">
							<span class="material-symbols-outlined">notifications</span>
						</button>
						<button
							class="flex max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 bg-[#f0f2f4] dark:bg-gray-800 text-[#111318] dark:text-white gap-2 text-sm font-bold leading-normal tracking-[0.015em] min-w-0 px-2.5">
							<span class="material-symbols-outlined">account_circle</span>
						</button>
					</div>
					<div
						class="bg-center bg-no-repeat aspect-square bg-cover rounded-full size-10 border border-gray-200 dark:border-gray-700"
						style='background-image: url("https://lh3.googleusercontent.com/aida-public/AB6AXuC3oIueaOlZcNAKtQaCG53zWsFjDGIITU8Si4my1CO9037-tsU00zjA1lt_lE7e8OLHUdwMoMJmKFNO65XXarVseWz1uMAejxs3lNA0Rf1D27vGo5Pd8Uf1mogo_PfqvIc9zo-7qk4woIdaSz5IMLE-xB_LapcSU9qELPXMLSSUL8W6doVqKyK_Bc_J1wytwbiJFEVJaQGBWNwYCsp3UvZAFKjqvZkQXv4gsdzuhjYELmwmw8UfCeAzt_4prQIgHBxCaeIrWE548j8");'></div>
				</div>
			</header>
			<main class="flex flex-1 items-center justify-center py-10 px-4">
				<div
					class="layout-content-container flex flex-col max-w-[800px] w-full flex-1">
					<div
						class="bg-white dark:bg-gray-900 rounded-xl shadow-xl overflow-hidden border border-gray-100 dark:border-gray-800">
						<div
							class="flex flex-col items-center pt-10 pb-6 px-8 text-center">
							<div
								class="size-20 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mb-6">
								<span
									class="material-symbols-outlined text-green-600 dark:text-green-400 text-5xl font-bold">check_circle</span>
							</div>
							<h1
								class="text-[#111318] dark:text-white text-3xl font-extrabold leading-tight tracking-[-0.015em] mb-3">Job
								Created Successfully</h1>
							<p
								class="text-[#636f88] dark:text-gray-400 text-base font-normal leading-relaxed max-w-md">
								The job listing has been published and is now visible to
								eligible candidates.</p>
						</div>
						<div class="px-8 pb-4">
							<div
								class="bg-background-light dark:bg-gray-800/50 rounded-lg border border-gray-200 dark:border-gray-700">
								<div class="p-6 flex flex-col gap-y-6">
									<div
										class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-6 border-b border-gray-200 dark:border-gray-700 pb-6">
										<div>
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-1">Job
												ID</p>
											<div class="flex items-center gap-1.5">
												
												<p class="text-[#111318] dark:text-white text-sm font-bold">${job.jobId}</p>
											</div>
										</div>
										<div>
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-1">Company
												ID</p>
											<div class="flex items-center gap-1.5">
												<span
													class="material-symbols-outlined text-gray-400 text-sm">badge</span>
												<p class="text-[#111318] dark:text-white text-sm font-bold">${job.companyId}</p>
											</div>
										</div>
										<div>
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-1">Job
												Role</p>
											<p class="text-primary text-sm font-bold">Senior Software
												Engineer</p>
										</div>
										<div>
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-1">Job
												Type</p>
											<span
												class="inline-flex items-center rounded-md bg-blue-50 dark:bg-blue-900/20 px-2 py-0.5 text-xs font-semibold text-blue-700 dark:text-blue-300 ring-1 ring-inset ring-blue-700/10">${job.type}</span>
										</div>
										<div>
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-1">Location</p>
											<div class="flex items-center gap-1">
												<p
													class="text-[#111318] dark:text-white text-sm font-medium">${job.location}</p>
											</div>
										</div>
									</div>
									<div class="border-b border-gray-200 dark:border-gray-700 pb-6">
										<p
											class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-2">Job
											Description</p>
										<p
											class="text-[#111318] dark:text-gray-300 text-sm leading-relaxed">
											${job.description}</p>
									</div>    
									<div class="grid grid-cols-2 gap-6">
										<div
											class="bg-white dark:bg-gray-900 p-3 rounded-lg border border-gray-200 dark:border-gray-700">
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-2">Total
												Vacancy</p>
											<div class="flex items-center gap-3">
												<div
													class="size-8 rounded bg-gray-100 dark:bg-gray-800 flex items-center justify-center">
													<span
														class="material-symbols-outlined text-gray-500 text-lg">groups</span>
												</div>
												<p class="text-[#111318] dark:text-white text-xl font-black">${job.vacancy}</p>
											</div>
										</div>
										<div
											class="bg-white dark:bg-gray-900 p-3 rounded-lg border border-gray-200 dark:border-gray-700">
											<p
												class="text-[#636f88] dark:text-gray-400 text-[10px] uppercase font-bold tracking-wider mb-2">Current
												Openings</p>
											<div class="flex items-center gap-3">
												<div
													class="size-8 rounded bg-blue-50 dark:bg-blue-900/30 flex items-center justify-center">
													<span
														class="material-symbols-outlined text-primary text-lg">person_search</span>
												</div>
												<p class="text-primary text-xl font-black">${job.openings}</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="px-8 py-8 flex flex-col gap-4 bg-gray-50/50 dark:bg-gray-800/20">
							<div class="flex justify-center">
								<a href ="companyDashboard.jsp" class="flex w-full cursor-pointer items-center justify-center overflow-hidden rounded-lg h-14 px-6 bg-primary text-white text-lg font-bold leading-normal tracking-[0.015em] shadow-lg shadow-primary/20 hover:bg-primary/90 transition-colors"><button
									>
									<span class="material-symbols-outlined mr-2">dashboard</span> <span
										class="truncate">Go to Dashboard</span>
								</button></a>
							</div>
							<div class="flex flex-col items-center gap-2">
								<p
									class="text-[#636f88] dark:text-gray-400 text-sm font-normal leading-normal text-center">
									Something looks wrong? <a
										class="text-primary font-semibold underline decoration-2 underline-offset-4 hover:text-primary/80"
										href="#">Edit this Listing</a>
								</p>
								<p
									class="text-[#636f88] dark:text-gray-500 text-[10px] font-medium leading-normal text-center mt-2 uppercase tracking-widest">
									System Timestamp: 2024-10-24 14:30:00</p>
							</div>
						</div>
					</div>
					<div class="mt-8 flex flex-wrap justify-center gap-6">
						<a href = "newJob.jsp"><button
							class="flex items-center gap-2 text-sm font-bold text-[#636f88] dark:text-gray-400 hover:text-primary transition-colors group">
							<span
								class="material-symbols-outlined text-lg group-hover:scale-110 transition-transform">post_add</span>
							Create Another Job
						</button></a>
						<button
							class="flex items-center gap-2 text-sm font-bold text-[#636f88] dark:text-gray-400 hover:text-primary transition-colors group">
							<span
								class="material-symbols-outlined text-lg group-hover:scale-110 transition-transform">share</span>
							Share Listing
						</button>
						<button
							class="flex items-center gap-2 text-sm font-bold text-[#636f88] dark:text-gray-400 hover:text-primary transition-colors group">
							<span
								class="material-symbols-outlined text-lg group-hover:scale-110 transition-transform">print</span>
							Print Summary
						</button>
					</div>
				</div>
			</main>
		</div>
	</div>

</body>
</html>