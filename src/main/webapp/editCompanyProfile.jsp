<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Edit Company Profile - Campus Placement Portal</title>
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
<style>
body {
	font-family: 'Manrope', sans-serif;
}

.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

.active-nav { @apply bg-primary/10 text-primary border-r-4
	border-primary;
	
}
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
					<div
						class="flex items-center gap-2 text-gray-500 text-sm font-medium">
						<span>Account</span> <span
							class="material-symbols-outlined text-xs">chevron_right</span> <span
							class="text-gray-900 dark:text-white font-bold">Edit
							Profile</span>
					</div>
				</div>
				<div class="flex items-center gap-6">
					<div class="flex items-center gap-3 cursor-pointer">
						<div class="text-right">
							<p
								class="text-xs font-bold leading-none text-gray-900 dark:text-white">Sarah
								Jenkins</p>
							<p class="text-[10px] text-gray-500">Talent Acquisition</p>
						</div>
						<div
							class="size-8 rounded-full bg-cover bg-center border border-gray-200"
							style="background-image: url('https://lh3.googleusercontent.com/aida-public/AB6AXuDsDruZ6N3C1nyg5wgfGdci3KWga1dRal5MPYn7Rk3IjzMWqChPk9fxgdC082AHdjpPQTZnWr6FcoZVHxC0rKEFhXMyuZP4Sn_rH4_qmOhQ03RgRBoRG8CLj99LGl9vBuKXdWt9nIrSx6_hBjTM36YmQ4h-gCMTw6uVnqx1WAMxm08wQriQFxkE-mN-QPqgLNvDT2kkuIZcSbjfuoqwyFIiDTpawZr0ApGhQobgj7FMQ-SmrbfMobDLBv0gfe94WiV_9KuHkOCvDpk')"></div>
					</div>
				</div>
			</header>
			<div class="p-8 max-w-4xl">
				<div class="mb-8">
					<h2 class="text-3xl font-extrabold tracking-tight">Edit
						Company Profile</h2>
					<p class="text-gray-500 mt-1">Update your organization's
						information visible to students and administrators.</p>
				</div>
				<div
					class="bg-white dark:bg-gray-900 rounded-xl border border-gray-200 dark:border-gray-800 shadow-sm overflow-hidden">
					<div class="p-8">
						<div
							class="flex items-center gap-6 mb-8 pb-8 border-b border-gray-100 dark:border-gray-800">
							<div class="relative group">
								<div
									class="size-24 bg-gray-100 dark:bg-gray-800 rounded-xl flex items-center justify-center text-primary overflow-hidden border-2 border-dashed border-gray-200 dark:border-gray-700">
									<span class="material-symbols-outlined text-4xl">business</span>
									<div
										class="absolute inset-0 bg-black/40 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer">
										<span class="material-symbols-outlined text-white">photo_camera</span>
									</div>
								</div>
							</div>
							<div>
								<h3 class="font-bold text-lg">Company Logo</h3>
								<p class="text-sm text-gray-500 mb-2">Upload a
									high-resolution logo (min. 400x400px).</p>
								<div class="flex gap-2">
									<button
										class="text-xs font-bold px-3 py-1.5 bg-gray-100 dark:bg-gray-800 hover:bg-gray-200 rounded text-gray-700 dark:text-gray-300 transition-colors">Change
										Photo</button>
									<button
										class="text-xs font-bold px-3 py-1.5 text-red-500 hover:bg-red-50 dark:hover:bg-red-900/10 rounded transition-colors">Remove</button>
								</div>
							</div>
						</div>
						<form class="space-y-6">
							<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
								<div class="space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Company
										ID</label> <input
										class="w-full bg-gray-50 dark:bg-gray-800/50 border-gray-200 dark:border-gray-800 rounded-lg text-sm text-gray-500 cursor-not-allowed"
										disabled="" type="text" value="TC-99201" />
								</div>
								<div class="space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Company
										Name</label> <input
										class="w-full border-gray-200 dark:border-gray-800 dark:bg-gray-800 rounded-lg text-sm focus:ring-primary focus:border-primary"
										placeholder="Enter company name" type="text" value="TechCorp" />
								</div>
								<div class="space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Representative
										Name</label> <input
										class="w-full border-gray-200 dark:border-gray-800 dark:bg-gray-800 rounded-lg text-sm focus:ring-primary focus:border-primary"
										placeholder="Full name" type="text" value="Sarah Jenkins" />
								</div>
								<div class="space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Contact
										Number</label> <input
										class="w-full border-gray-200 dark:border-gray-800 dark:bg-gray-800 rounded-lg text-sm focus:ring-primary focus:border-primary"
										placeholder="+1 (000) 000-0000" type="tel"
										value="+1 (555) 123-4567" />
								</div>
								<div class="md:col-span-2 space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Email
										Address</label> <input
										class="w-full border-gray-200 dark:border-gray-800 dark:bg-gray-800 rounded-lg text-sm focus:ring-primary focus:border-primary"
										placeholder="company@email.com" type="email"
										value="hiring@techcorp.example" />
								</div>
								<div class="md:col-span-2 space-y-1.5">
									<label
										class="text-xs font-bold text-gray-500 uppercase tracking-wider">Office
										Address</label>
									<textarea
										class="w-full border-gray-200 dark:border-gray-800 dark:bg-gray-800 rounded-lg text-sm focus:ring-primary focus:border-primary"
										placeholder="Enter full office address" rows="3">123 Innovation Drive, Silicon Valley, CA 94025, United States</textarea>
								</div>
							</div>
							<div
								class="pt-8 flex items-center justify-end gap-3 border-t border-gray-100 dark:border-gray-800">
								<button
									class="px-6 py-2.5 text-sm font-bold text-gray-500 hover:text-gray-900 dark:hover:text-white transition-colors"
									type="button">Cancel</button>
								<button
									class="px-6 py-2.5 bg-primary text-white rounded-lg font-bold text-sm shadow-lg shadow-primary/20 hover:bg-primary/90 transition-all"
									type="submit">Save Changes</button>
							</div>
						</form>
					</div>
				</div>
				<div
					class="mt-8 p-6 bg-red-50/50 dark:bg-red-900/10 border border-red-100 dark:border-red-900/20 rounded-xl">
					<div class="flex items-center justify-between">
						<div>
							<h4 class="text-red-900 dark:text-red-400 font-bold text-sm">Deactivate
								Account</h4>
							<p class="text-red-700/70 dark:text-red-400/60 text-xs">Temporarily
								hide your profile and job listings from the portal.</p>
						</div>
						<button
							class="px-4 py-2 bg-white dark:bg-red-900/20 border border-red-200 dark:border-red-900/30 text-red-600 dark:text-red-400 text-xs font-bold rounded-lg hover:bg-red-50 transition-colors">
							Deactivate</button>
					</div>
				</div>
			</div>
		</main>
	</div>

</body>
</html>