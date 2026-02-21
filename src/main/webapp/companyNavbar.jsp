<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside
	class="w-64 bg-white dark:bg-gray-900 border-r border-gray-200 dark:border-gray-800 flex flex-col fixed h-full">
	<div class="p-6 flex items-center gap-3">
		<div
			class="size-8 bg-primary rounded-lg flex items-center justify-center text-white">
			<span class="material-symbols-outlined">rocket_launch</span>
		</div>
		<h1 class="text-xl font-bold tracking-tight">TechCorp</h1>
	</div>
	<nav class="flex-1 px-4 py-4 space-y-1">
		<a
			class="flex items-center gap-3 px-3 py-2.5 text-gray-600 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg transition-colors"
			href="companyDashboard.jsp"> <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1">dashboard</span> <span
			class="text-sm font-semibold">Dashboard</span>
		</a> <a
			class="flex items-center gap-3 px-3 py-2.5 text-gray-600 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg transition-colors"
			href="companyProfile.jsp"> <span
			class="material-symbols-outlined">business</span> <span
			class="text-sm font-semibold">Company Profile</span>
		</a> <a
			class="flex items-center gap-3 px-3 py-2.5 active-nav rounded-lg transition-colors"
			href="manageJobs"> <span class="material-symbols-outlined">work</span> <span
			class="text-sm font-semibold">Manage Jobs</span>
		</a> <a
			class="flex items-center gap-3 px-3 py-2.5 text-gray-600 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg transition-colors"
			href="#"> <span class="material-symbols-outlined">description</span>
			<span class="text-sm font-semibold">View Applications</span>
		</a> <a
			class="flex items-center gap-3 px-3 py-2.5 text-gray-600 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg transition-colors"
			href="#"> <span class="material-symbols-outlined">group</span> <span
			class="text-sm font-semibold">Student Directory</span>
		</a>
	</nav>
	<div
		class="p-4 border-t border-gray-200 dark:border-gray-800 space-y-1">
		<a
			class="flex items-center gap-3 px-3 py-2.5 text-gray-600 dark:text-gray-400 hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg transition-colors"
			href="#"> <span class="material-symbols-outlined">settings</span>
			<span class="text-sm font-semibold">Settings</span>
		</a> <a
			class="flex items-center gap-3 px-3 py-2.5 text-red-500 hover:bg-red-50 dark:hover:bg-red-900/10 rounded-lg transition-colors"
			href="logout"> <span class="material-symbols-outlined">logout</span>
			<span class="text-sm font-semibold">Logout</span>
		</a>
	</div>
</aside>