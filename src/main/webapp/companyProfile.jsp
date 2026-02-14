<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Company Profile - Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@300;400;500;600;700;800&amp;display=swap"
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
					"display" : [ "Manrope" ]
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
<style type="text/tailwindcss">
        body { font-family: 'Manrope', sans-serif; }
        .material-symbols-outlined { font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24; }
        .active-nav { @apply bg-primary/10 text-primary border-r-4 border-primary; }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-[#111318] font-display">
	<div class="flex min-h-screen">
	<jsp:include page="companyNavbar.jsp" />
		<main class="flex-1 ml-64">
			<header
				class="h-16 bg-white dark:bg-gray-900 border-b border-gray-200 dark:border-gray-800 flex items-center justify-between px-8 sticky top-0 z-10">
				<div class="flex items-center gap-4">
					<a
						class="flex items-center gap-2 text-gray-500 hover:text-primary transition-colors text-sm font-medium"
						href="companyDashboard.jsp"> <span class="material-symbols-outlined text-sm">arrow_back</span>
						<span>Back to Dashboard</span>
					</a> <span class="material-symbols-outlined text-xs text-gray-400">chevron_right</span>
					<span class="text-gray-900 dark:text-white font-bold text-sm">Company
						Profile</span>
				</div>
				<div class="flex items-center gap-6">
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
								style="background-image: url('https://lh3.googleusercontent.com/aida-public/AB6AXuDsDruZ6N3C1nyg5wgfGdci3KWga1dRal5MPYn7Rk3IjzMWqChPk9fxgdC082AHdjpPQTZnWr6FcoZVHxC0rKEFhXMyuZP4Sn_rH4_qmOhQ03RgRBoRG8CLj99LGl9vBuKXdWt9nIrSx6_hBjTM36YmQ4h-gCMTw6uVnqx1WAMxm08wQriQFxkE-mN-QPqgLNvDT2kkuIZcSbjfuoqwyFIiDTpawZr0ApGhQobgj7FMQ-SmrbfMobDLBv0gfe94WiV_9KuHkOCvDpk')"></div>
						</div>
					</div>
				</div>
			</header>
			<div class="p-8 max-w-5xl mx-auto space-y-8">
				<div class="flex justify-between items-center">
					<div>
						<h2 class="text-3xl font-extrabold tracking-tight">Company
							Profile</h2>
						<p class="text-gray-500 mt-1">Manage your organization's
							public identity and contact information.</p>
					</div>
					<a href ="editCompanyProfile.jsp"><button
						class="flex items-center gap-2 bg-primary text-white px-6 py-3 rounded-lg font-bold text-sm shadow-lg shadow-primary/20 hover:bg-primary/90 transition-all">
						<span class="material-symbols-outlined text-lg">edit</span> Edit
						Profile
					</button></a>
				</div>
				<div
					class="bg-white dark:bg-gray-900 rounded-2xl border border-gray-200 dark:border-gray-800 shadow-sm overflow-hidden">
					<div
						class="h-32 bg-gradient-to-r from-blue-500 to-primary relative">
						<div
							class="absolute -bottom-12 left-8 p-1 bg-white dark:bg-gray-900 rounded-xl border border-gray-100 dark:border-gray-800 shadow-md">
							<div
								class="size-24 bg-gray-50 dark:bg-gray-800 rounded-lg flex items-center justify-center">
								<span class="material-symbols-outlined text-4xl text-gray-300">business</span>
							</div>
						</div>
					</div>
					<div class="pt-16 pb-10 px-8">
						<div class="grid grid-cols-1 md:grid-cols-2 gap-12">
							<div class="space-y-6">
								<div
									class="flex items-center gap-2 border-b border-gray-100 dark:border-gray-800 pb-3">
									<span class="material-symbols-outlined text-primary">info</span>
									<h3 class="text-lg font-bold">Company Identity</h3>
								</div>
								<div class="space-y-4">
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Company
											ID</span> <span
											class="col-span-2 text-sm font-bold text-gray-900 dark:text-gray-100">TC-2023-0084</span>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Name</span>
										<span
											class="col-span-2 text-sm font-bold text-gray-900 dark:text-gray-100">TechCorp
											Solutions International</span>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Representative</span>
										<div class="col-span-2">
											<p class="text-sm font-bold text-gray-900 dark:text-gray-100">Sarah
												Jenkins</p>
											<p class="text-xs text-gray-500">Talent Acquisition
												Manager</p>
										</div>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Industry</span>
										<span
											class="col-span-2 text-sm font-bold text-gray-900 dark:text-gray-100">Software
											&amp; Cloud Services</span>
									</div>
								</div>
							</div>
							<div class="space-y-6">
								<div
									class="flex items-center gap-2 border-b border-gray-100 dark:border-gray-800 pb-3">
									<span class="material-symbols-outlined text-primary">contact_page</span>
									<h3 class="text-lg font-bold">Contact Details</h3>
								</div>
								<div class="space-y-4">
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Contact
											No.</span> <span
											class="col-span-2 text-sm font-bold text-gray-900 dark:text-gray-100">+1
											(555) 234-5678</span>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Email</span>
										<span
											class="col-span-2 text-sm font-bold text-primary hover:underline cursor-pointer">recruitment@techcorp.com</span>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Address</span>
										<div class="col-span-2">
											<p
												class="text-sm font-bold text-gray-900 dark:text-gray-100 leading-relaxed">
												1200 Innovation Way, Suite 400<br /> Palo Alto, CA 94304<br />
												United States
											</p>
										</div>
									</div>
									<div class="grid grid-cols-3 gap-4">
										<span
											class="text-sm font-semibold text-gray-400 uppercase tracking-wider">Website</span>
										<span
											class="col-span-2 text-sm font-bold text-primary hover:underline cursor-pointer">www.techcorp.com</span>
									</div>
								</div>
							</div>
						</div>
						<div
							class="mt-12 pt-8 border-t border-gray-100 dark:border-gray-800">
							<div class="flex items-center gap-2 mb-4">
								<span class="material-symbols-outlined text-primary">description</span>
								<h3 class="text-lg font-bold">Company Overview</h3>
							</div>
							<p
								class="text-sm text-gray-600 dark:text-gray-400 leading-relaxed max-w-3xl">
								TechCorp is a leading innovator in cloud computing and
								enterprise software solutions. Founded in 2010, we have grown
								from a small startup to a global organization with over 5,000
								employees. We are dedicated to building technologies that
								empower developers and transform how businesses operate in the
								digital age. Our campus placement program is designed to
								identify and nurture the next generation of technical talent.</p>
						</div>
					</div>
				</div>
				<div
					class="bg-emerald-50 dark:bg-emerald-900/10 border border-emerald-100 dark:border-emerald-800 rounded-xl p-4 flex items-center justify-between">
					<div class="flex items-center gap-3">
						<span class="material-symbols-outlined text-emerald-600">verified</span>
						<div>
							<p
								class="text-sm font-bold text-emerald-900 dark:text-emerald-400">Verified
								Institution</p>
							<p class="text-xs text-emerald-700 dark:text-emerald-500">Your
								company profile has been verified by the university placement
								cell.</p>
						</div>
					</div>
					<div
						class="text-[10px] font-bold text-emerald-600 uppercase tracking-widest bg-white dark:bg-emerald-900/20 px-3 py-1 rounded-full">Active</div>
				</div>
			</div>
		</main>
	</div>

</body>
</html>
tml>
