<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Student Registration | Campus Placement Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Lexend:wght@100..900&amp;display=swap"
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
					"display" : [ "Lexend", "sans-serif" ]
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
	font-family: 'Lexend', sans-serif;
}
</style>
</head>
<body class="bg-background-light dark:bg-background-dark min-h-screen">
	<div class="layout-container flex h-full grow flex-col">
		<!-- Top Navigation Bar -->
		<header
			class="flex items-center justify-between whitespace-nowrap border-b border-solid border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-background-dark px-10 py-3 sticky top-0 z-50">
			<div class="flex items-center gap-4 text-[#111318] dark:text-white">
				<div class="size-6 text-primary">
					<span class="material-symbols-outlined text-3xl">school</span>
				</div>
				<h2
					class="text-[#111318] dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">Placement
					Portal</h2>
			</div>
			<button
				class="flex min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-lg h-10 px-4 bg-primary text-white text-sm font-bold leading-normal tracking-[0.015em] hover:opacity-90 transition-opacity">
				<span class="truncate">Login</span>
			</button>
		</header>
		<main class="flex flex-1 justify-center py-10 px-4">
			<div
				class="layout-content-container flex flex-col max-w-[800px] flex-1 bg-white dark:bg-[#1c222e] rounded-xl shadow-sm border border-[#dcdfe5] dark:border-[#343d4e] overflow-hidden">
				<!-- Page Heading -->
				<div
					class="flex flex-col gap-3 p-8 border-b border-[#dcdfe5] dark:border-[#343d4e]">
					<h1
						class="text-[#111318] dark:text-white text-4xl font-black leading-tight tracking-[-0.033em]">Student
						Registration</h1>
					<p
						class="text-[#636f88] dark:text-[#a1abbd] text-base font-normal leading-normal">Complete
						the form below to create your placement account and start applying
						for jobs.</p>
				</div>
				<form class="p-8 flex flex-col gap-8" action="RegisterStudent" method ="POST">
					<!-- Section: Personal Details -->
					<section>
						<div class="flex items-center gap-2 mb-4">
							<span class="material-symbols-outlined text-primary">person</span>
							<h2
								class="text-[#111318] dark:text-white text-[22px] font-bold leading-tight tracking-[-0.015em]">Personal
								Details</h2>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<label class="flex flex-col col-span-1 md:col-span-2">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">PRN
									(Permanent Registration Number)</p> <input
									name ="prn"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="e.g. 2023010456" />
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">First
									Name</p> <input
									name ="firstName"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="e.g. John" />
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Last
									Name</p> <input
									name ="lastName"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="e.g. Doe" />
							</label> <label class="flex flex-col col-span-1 md:col-span-2">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Current
									Address</p> <textarea
									name ="address"
									class="form-input flex w-full min-h-[100px] rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] placeholder:text-[#636f88] p-4 text-base font-normal"
									placeholder="Enter your full residential address"></textarea>
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Contact
									Number</p> <input
									name ="contact"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="+91 "/>
							</label>
						</div>
					</section>
					<!-- Section: Academic Details -->
					<section>
						<div
							class="flex items-center gap-2 mb-4 pt-4 border-t border-[#f0f2f4] dark:border-[#343d4e]">
							<span class="material-symbols-outlined text-primary">school</span>
							<h2
								class="text-[#111318] dark:text-white text-[22px] font-bold leading-tight tracking-[-0.015em]">Academic
								Details</h2>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">University
									Email</p> <input
									name ="email"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="john.doe@university.edu" type="email" />
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Program
									ID</p> <input
									name ="programId"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="e.g. CS-2024" />
							</label>
						</div>
					</section>
					<!-- Section: Account Security -->
					<section>
						<div
							class="flex items-center gap-2 mb-4 pt-4 border-t border-[#f0f2f4] dark:border-[#343d4e]">
							<span class="material-symbols-outlined text-primary">lock</span>
							<h2
								class="text-[#111318] dark:text-white text-[22px] font-bold leading-tight tracking-[-0.015em]">Account
								Security</h2>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<label class="flex flex-col col-span-1 md:col-span-2">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Create
									Username</p> <input
									name ="username"
								class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
								placeholder="Choose a unique username" />
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Create
									Password</p>
								<div class="relative">
									<input
									name ="password"
										class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
										placeholder="••••••••" type="password" /> <span
										class="material-symbols-outlined absolute right-4 top-3 text-[#636f88] cursor-pointer">visibility</span>
								</div>
							</label> <label class="flex flex-col">
								<p
									class="text-[#111318] dark:text-white text-sm font-medium leading-normal pb-2">Confirm
									Password</p>
								<div class="relative">
									<input
									name ="confirmPassword"
										class="form-input flex w-full rounded-lg text-[#111318] dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border border-[#dcdfe5] dark:border-[#343d4e] bg-white dark:bg-[#111621] h-12 placeholder:text-[#636f88] p-4 text-base font-normal"
										placeholder="••••••••" type="password" /> <span
										class="material-symbols-outlined absolute right-4 top-3 text-[#636f88] cursor-pointer">visibility</span>
								</div>
							</label>
						</div>
					</section>
					<!-- Actions -->
					<div class="flex flex-col gap-4 mt-6">
						<button
							class="flex w-full cursor-pointer items-center justify-center overflow-hidden rounded-xl h-14 px-5 bg-primary text-white text-lg font-bold leading-normal tracking-[0.015em] hover:brightness-110 shadow-md transition-all"
							type="submit">Register Account</button>
						<div class="flex justify-center items-center gap-2 py-2">
							<p class="text-[#636f88] dark:text-[#a1abbd] text-sm">Already
								have an account?</p>
							<a class="text-primary font-bold text-sm hover:underline"
								href="studentLogin.html">Back to Login</a>
						</div>
					</div>
				</form>
			</div>
		</main>
		<!-- Footer Note -->
		<footer
			class="py-8 text-center text-[#636f88] dark:text-[#a1abbd] text-sm">
			<p>© 2024 Campus Placement Management System. All rights
				reserved.</p>
		</footer>
	</div>
</body>
</html>