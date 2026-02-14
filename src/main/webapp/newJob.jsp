<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Post New Job Form - Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Lexend:wght@300;400;500;600;700&amp;display=swap"
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
					"primary" : "#306ee8",
					"background-light" : "#f6f6f8",
					"background-dark" : "#111621",
				},
				fontFamily : {
					"display" : [ "Lexend" ]
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
</head>
<body
	class="bg-background-light dark:bg-background-dark font-display text-slate-900 dark:text-slate-100 min-h-screen">
	<div
		class="relative flex h-auto min-h-screen w-full flex-col group/design-root ">
		
		<div class="layout-container flex h-full grow flex-col">
			<!-- Top Navigation Bar -->
			<jsp:include page="companyNavbar.jsp" />
			<main class="flex-1 overflow-y-auto flex justify-center">
				<div class="mx-auto max-w-[1024px] px-10 py-8">
					<!-- Breadcrumbs -->
					<div class="flex flex-wrap gap-2 items-center mb-6">
						<a
							class="text-[#636f88] dark:text-[#a0a8b8] text-sm font-medium hover:text-primary flex items-center gap-1"
							href="companyDashboard.jsp"> <span
							class="material-symbols-outlined text-[18px]">dashboard</span>
							Recruiter Dashboard
						</a> <span class="text-[#636f88] text-sm font-medium">/</span> <span
							class="text-[#111318] dark:text-white text-sm font-medium">Post
							New Job</span>
					</div>
					<!-- Page Heading -->
					<div class="flex flex-wrap justify-between gap-3 mb-8">
						<div class="flex min-w-72 flex-col gap-2">
							<h1
								class="text-[#111318] dark:text-white tracking-light text-[32px] font-bold leading-tight">Post
								a New Job Opening</h1>
							<p
								class="text-[#636f88] dark:text-[#a0a8b8] text-base font-normal leading-normal">Fill
								in the details below to broadcast a new opportunity to students
								across campus.</p>
						</div>
					</div>
					<!-- Form Card -->
					<div
						class="bg-white dark:bg-[#1a212f] rounded-xl shadow-sm border border-[#e5e7eb] dark:border-[#2a303c] overflow-hidden">
						<div class="p-8">
							<form action="JobServlet" class="space-y-6" method="POST">
								<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Company
											ID</label>
										<div class="relative">
											<input name="company_id"
												class="form-input flex w-full rounded-lg text-[#636f88] dark:text-[#a0a8b8] border border-[#dcdfe5] dark:border-[#3a4150] bg-[#f8fafc] dark:bg-[#111621] h-14 p-[15px] text-base font-normal focus:ring-0 focus:outline-none"
												value="3001" />
										</div>
										<p class="text-[#636f88] text-xs">Automatically assigned
											to your organization.</p>
									</div>
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Role
											/ Job Title <span class="text-red-500">*</span>
										</label> <input name="role"
											class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:ring-2 focus:ring-primary focus:border-primary border border-[#dcdfe5] dark:border-[#3a4150] bg-white dark:bg-[#111621] h-14 p-[15px] text-base font-normal placeholder:text-[#636f88]"
											placeholder="e.g. Senior Software Engineer" required=""
											value="" />
									</div>
								</div>
								<div class="flex flex-col gap-2">
									<label
										class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Job
										Description <span class="text-red-500">*</span>
									</label>
									<textarea name="jobDescription"
										class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:ring-2 focus:ring-primary focus:border-primary border border-[#dcdfe5] dark:border-[#3a4150] bg-white dark:bg-[#111621] p-[15px] text-base font-normal placeholder:text-[#636f88] resize-y"
										placeholder="Outline the responsibilities, required skills, and qualifications for this role..."
										required="" rows="4"></textarea>
								</div>
								<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Location
											<span class="text-red-500">*</span>
										</label>
										<div
											class="flex items-stretch rounded-lg border border-[#dcdfe5] dark:border-[#3a4150] overflow-hidden focus-within:ring-2 focus-within:ring-primary h-14">
											<span
												class="flex items-center justify-center px-4 bg-background-light dark:bg-[#2a303c] border-r border-[#dcdfe5] dark:border-[#3a4150]">
												<span class="material-symbols-outlined text-[#636f88]">location_on</span>
											</span> <input name="location"
												class="form-input flex w-full border-none bg-white dark:bg-[#111621] text-[#111318] dark:text-white p-[15px] text-base font-normal placeholder:text-[#636f88] focus:ring-0"
												placeholder="e.g. City, State, Country" required=""
												type="text" />
										</div>
									</div>
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Total
											Vacancy <span class="text-red-500">*</span>
										</label>
										<div
											class="flex items-stretch rounded-lg border border-[#dcdfe5] dark:border-[#3a4150] overflow-hidden focus-within:ring-2 focus-within:ring-primary h-14">
											<span
												class="flex items-center justify-center px-4 bg-background-light dark:bg-[#2a303c] border-r border-[#dcdfe5] dark:border-[#3a4150]">
												<span class="material-symbols-outlined text-[#636f88]">groups</span>
											</span> <input name="vacancy"
												class="form-input flex w-full border-none bg-white dark:bg-[#111621] text-[#111318] dark:text-white p-[15px] text-base font-normal placeholder:text-[#636f88] focus:ring-0"
												min="1" placeholder="e.g. 50" required="" type="number" />
										</div>
									</div>
								</div>
								<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Job
											Type <span class="text-red-500">*</span>
										</label>
										<div
											class="flex items-stretch rounded-lg border border-[#dcdfe5] dark:border-[#3a4150] overflow-hidden focus-within:ring-2 focus-within:ring-primary h-14">
											<span
												class="flex items-center justify-center px-4 bg-background-light dark:bg-[#2a303c] border-r border-[#dcdfe5] dark:border-[#3a4150]">
												<span class="material-symbols-outlined text-[#636f88]">category</span>
											</span> <select name="type"
												class="form-select flex w-full border-none bg-white dark:bg-[#111621] text-[#111318] dark:text-white p-[15px] text-base font-normal focus:ring-0"
												required="">
												<option disabled="" selected="" value="">Select Job
													Type</option>
												<option value="full-time">Full-time</option>
												<option value="internship">Internship</option>
												<option value="contract">Contract</option>
											</select>
										</div>
									</div>
									<div class="flex flex-col gap-2">
										<label
											class="text-[#111318] dark:text-[#f0f2f4] text-base font-medium leading-normal">Current
											Openings <span class="text-red-500">*</span>
										</label>
										<div
											class="flex items-stretch rounded-lg border border-[#dcdfe5] dark:border-[#3a4150] overflow-hidden focus-within:ring-2 focus-within:ring-primary h-14">
											<span
												class="flex items-center justify-center px-4 bg-background-light dark:bg-[#2a303c] border-r border-[#dcdfe5] dark:border-[#3a4150]">
												<span class="material-symbols-outlined text-[#636f88]">work_outline</span>
											</span> <input name="remainingSeats"
												class="form-input flex w-full border-none bg-white dark:bg-[#111621] text-[#111318] dark:text-white p-[15px] text-base font-normal placeholder:text-[#636f88] focus:ring-0"
												min="1" placeholder="e.g. 10" required="" type="number" />
										</div>
									</div>
								</div>
								<div
									class="flex flex-wrap items-center justify-end gap-4 pt-6 border-t border-[#f0f2f4] dark:border-[#2a303c]">
									<button
										class="px-6 py-3 rounded-lg text-[#111318] dark:text-white font-semibold text-base bg-white dark:bg-transparent border border-[#dcdfe5] dark:border-[#3a4150] hover:bg-gray-50 dark:hover:bg-[#2a303c] transition-colors"
										type="button">Cancel</button>
									<button
										class="flex items-center gap-2 px-8 py-3 rounded-lg bg-primary hover:bg-primary/90 text-white font-bold text-base transition-colors shadow-lg shadow-primary/20"
										type="submit">
										<span class="material-symbols-outlined">send</span> Post Job
									</button>
								</div>
							</form>
						</div>
					</div>
					<!-- Footer Help -->
					<div
						class="mt-8 flex items-center justify-center gap-2 text-[#636f88] text-sm">
						<span class="material-symbols-outlined text-[18px]">info</span> <span>Need
							help posting a job? Check our <a
							class="text-primary hover:underline" href="#">Recruiter
								Guidelines</a>.
						</span>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>