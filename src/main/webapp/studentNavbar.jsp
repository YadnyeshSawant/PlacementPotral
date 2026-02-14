<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<aside
	class="w-64 bg-white border-r border-slate-200 flex flex-col justify-between shrink-0">
	<div class="flex flex-col py-6">
		<div class="px-6 mb-8 flex items-center gap-3">
			<div class="bg-primary p-2 rounded-lg text-white">
				<span class="material-symbols-outlined block text-xl">rocket_launch</span>
			</div>
			<div>
				<h1 class="text-slate-900 text-lg font-bold leading-none">CareerLink</h1>
				<p
					class="text-slate-500 text-[10px] uppercase tracking-wider font-bold mt-1">Placement
					Portal</p>
			</div>
		</div>
		<nav class="flex flex-col gap-1">
			<a
				class="flex items-center gap-3 px-6 py-3 text-slate-500 hover:bg-slate-50 transition-colors"
				href="studentDashboard.jsp"> <span
				class="material-symbols-outlined"
				style="font-variation-settings: 'FILL' 1">dashboard</span> <span
				class="text-sm">Dashboard</span>
			</a> <a
				class="flex items-center gap-3 px-6 py-3 text-slate-500 hover:bg-slate-50 transition-colors"
				href="studentProfile"> <span
				class="material-symbols-outlined"
				style="font-variation-settings: 'FILL' 1">person</span> <span
				class="text-sm">My Profile</span>
			</a> <a
				class="flex items-center gap-3 px-6 py-3 text-slate-500 hover:bg-slate-50 transition-colors"
				href="#"> <span class="material-symbols-outlined">work</span> <span
				class="text-sm font-medium">Browse Jobs</span>
			</a> <a
				class="flex items-center gap-3 px-6 py-3 text-slate-500 hover:bg-slate-50 transition-colors"
				href="myApplications.jsp"> <span class="material-symbols-outlined">description</span>
				<span class="text-sm font-medium">My Applications</span>
			</a> <a
				class="flex items-center gap-3 px-6 py-3 text-slate-500 hover:bg-slate-50 transition-colors"
				href="viewCompanies.jsp"> <span
				class="material-symbols-outlined"
				style="font-variation-settings: 'FILL' 1">corporate_fare</span> <span
				class="text-sm font-semibold">View Companies</span>
			</a>
		</nav>
	</div>
	<div class="p-4 border-t border-slate-100">
		<a href="logout"><button type="button"
			class="flex items-center gap-3 w-full px-4 py-2 text-slate-500 hover:text-red-500 transition-colors">
			<span class="material-symbols-outlined">logout</span> <span
				class="text-sm font-medium">Logout</span>
		</button></a>
	</div>
</aside>