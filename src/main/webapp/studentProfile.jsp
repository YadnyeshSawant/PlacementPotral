<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Detailed Student Profile - Campus Placement Portal</title>
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
					"background-light" : "#f8fafc",
					"card-bg" : "#ffffff",
				},
				fontFamily : {
					"display" : [ "Manrope", "sans-serif" ]
				},
				borderRadius : {
					"DEFAULT" : "0.25rem",
					"lg" : "0.5rem",
					"xl" : "0.75rem",
					"2xl" : "1rem",
					"full" : "9999px"
				},
			},
		},
	}
</script>
<style type="text/tailwindcss">
        body {
            font-family: 'Manrope', sans-serif;
        }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
        .sidebar-active {
            @apply bg-primary/10 text-primary border-r-4 border-primary font-bold;
        }
    </style>
</head>
<body
	class="bg-background-light font-display text-slate-900 min-h-screen">
	<div class="flex h-screen overflow-hidden">
		<jsp:include page="studentNavbar.jsp" />

		<main class="flex-1 flex flex-col overflow-y-auto">
			<header
				class="sticky top-0 z-10 bg-white/80 backdrop-blur-md border-b border-slate-200 px-8 py-4 flex items-center justify-between">
				<div class="flex items-center gap-4">
					<p
						class="flex items-center gap-2 text-slate-500 hover:text-primary transition-colors font-semibold text-sm">
						Student Profile</p>
				</div>
				<div class="flex items-center gap-6">
					<div class="relative">
						<button
							class="p-2 text-slate-400 hover:bg-slate-100 rounded-full transition-colors">
							<span class="material-symbols-outlined">notifications</span>
						</button>
						<span
							class="absolute top-2 right-2 w-2 h-2 bg-red-500 rounded-full border-2 border-white"></span>
					</div>
					<div class="flex items-center gap-3">
						<div class="text-right">
							<p class="text-sm font-bold text-slate-900">${student.firstName}
								${student.lastName}</p>
							<p class="text-[11px] text-slate-500 font-medium">PRN:
								${student.prn}</p>
						</div>
						<div
							class="w-10 h-10 rounded-full bg-slate-200 bg-cover bg-center border border-slate-200"
							style='background-image: url("https://lh3.googleusercontent.com/aida-public/AB6AXuBE4NDlIjq0-20oKB7UDyoHmFYgVsJcuDlQl0_3OxVQAPKmibOrGY940KXTXgPGjkGbRm_d_5TT7Hi6Dz-HXjplp1uYGxJtlPY07B6NjvnZ04O_JtOReX56_-lxGhV2aOGi5NWPfYV4K_AiU_WP1st2VWAt_Iu5SgRqsnkFnEjxMoP0Pw4CvxfWYNQbeISPvSPQD3nHvyMsZ2-2eWu7VJGiO5T6HpzsRl2TGbguHPXhmtQwnRK5KuQQdaYM6L6mcXrp08lS0Ms4btU");'>
						</div>
					</div>
				</div>
			</header>
			<div class="p-8 max-w-5xl mx-auto w-full">
				<div
					class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden">
					<div
						class="h-40 bg-gradient-to-r from-blue-600 to-indigo-500 relative">
						<div class="absolute -bottom-16 left-10">
							<div
								class="w-32 h-32 rounded-2xl border-4 border-white bg-white overflow-hidden shadow-md">
								<img alt="Alex Johnson profile picture"
									class="w-full h-full object-cover"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuBE4NDlIjq0-20oKB7UDyoHmFYgVsJcuDlQl0_3OxVQAPKmibOrGY940KXTXgPGjkGbRm_d_5TT7Hi6Dz-HXjplp1uYGxJtlPY07B6NjvnZ04O_JtOReX56_-lxGhV2aOGi5NWPfYV4K_AiU_WP1st2VWAt_Iu5SgRqsnkFnEjxMoP0Pw4CvxfWYNQbeISPvSPQD3nHvyMsZ2-2eWu7VJGiO5T6HpzsRl2TGbguHPXhmtQwnRK5KuQQdaYM6L6mcXrp08lS0Ms4btU" />
							</div>
						</div>
					</div>
					<div
						class="pt-20 pb-8 px-10 flex flex-col md:flex-row md:items-end justify-between gap-6">
						<div>
							<h2 class="text-3xl font-extrabold text-slate-900">${student.firstName}
								${student.lastName}</h2>
							<p class="text-slate-500 font-medium mt-1">Program :
								${student.programName} - Batch 2025</p>
						</div>
						<a href="EditStudentProfile"><button
								class="flex items-center gap-2 px-6 py-2.5 bg-primary hover:bg-blue-700 text-white rounded-xl text-sm font-bold transition-all shadow-md shadow-primary/10">
								<span class="material-symbols-outlined text-lg">edit</span> Edit
								Profile
							</button></a>
					</div>
					<div class="px-10 pb-12 space-y-12">
						<section>
							<div class="flex items-center gap-3 mb-6">
								<div
									class="w-8 h-8 rounded-lg bg-blue-50 text-primary flex items-center justify-center">
									<span class="material-symbols-outlined text-xl">person</span>
								</div>
								<h3
									class="text-base font-bold text-slate-800 uppercase tracking-wide">Personal
									Information</h3>
							</div>
							<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">PRN</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.prn}</p>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">First
										Name</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.firstName}</p>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Last
										Name</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.lastName}</p>
								</div>
								<div class="lg:col-span-2">
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Address</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.address}</p>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Contact</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.contact}</p>
								</div>
								<div class="lg:col-span-2">
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Email
										Address</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.email}</p>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Program
										ID</label>
									<p
										class="text-slate-900 font-semibold p-3 bg-slate-50 border border-slate-100 rounded-xl">${student.programId}</p>
								</div>
							</div>
						</section>
						<section>
							<div
								class="flex items-center gap-3 mb-6 pt-6 border-t border-slate-100">
								<div
									class="w-8 h-8 rounded-lg bg-green-50 text-green-600 flex items-center justify-center">
									<span class="material-symbols-outlined text-xl">school</span>
								</div>
								<h3
									class="text-base font-bold text-slate-800 uppercase tracking-wide">Academic
									Scores</h3>
							</div>
							<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
								<div class="lg:col-span-1">
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Resume</label>
									<div
										class="flex items-center gap-3 p-3 bg-slate-50 border border-dashed border-slate-300 rounded-xl group cursor-pointer hover:bg-white transition-colors">
										<span
											class="material-symbols-outlined text-slate-400 group-hover:text-primary">picture_as_pdf</span>
										<span class="text-sm font-bold text-slate-700 truncate">Alex_Johnson_CV_2024.pdf</span>
										<span
											class="material-symbols-outlined text-lg ml-auto text-slate-300">download</span>
									</div>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">10th
										Percentage</label>
									<div
										class="flex items-center gap-2 text-slate-700 font-bold p-3 bg-slate-50 border border-slate-100 rounded-xl">
										<span class="material-symbols-outlined text-sm">auto_awesome</span>
										${student.sscPercentage}%
									</div>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">12th
										Percentage</label>
									<div
										class="flex items-center gap-2 text-slate-700 font-bold p-3 bg-slate-50 border border-slate-100 rounded-xl">
										<span class="material-symbols-outlined text-sm">auto_awesome</span>
										${student.hscPercentage}%
									</div>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Bachelor
										CGPA</label>
									<div
										class="flex items-center gap-2 text-primary font-bold p-3 bg-primary/5 border border-primary/10 rounded-xl">
										<span class="material-symbols-outlined text-sm">stars</span>
										${student.bachelorCgpa} / 10.0
									</div>
								</div>
								<div>
									<label
										class="text-[11px] font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Post
										Grad CGPA</label>
									<div
										class="flex items-center gap-2 text-slate-400 font-bold p-3 bg-slate-50 border border-slate-100 rounded-xl italic">
										${student.postgradCgpa}</div>
								</div>
							</div>
						</section>
						<section>
							<div
								class="flex items-center gap-3 mb-6 pt-6 border-t border-slate-100">
								<div
									class="w-8 h-8 rounded-lg bg-orange-50 text-orange-600 flex items-center justify-center">
									<span class="material-symbols-outlined text-xl">code</span>
								</div>
								<h3
									class="text-base font-bold text-slate-800 uppercase tracking-wide">Skills</h3>
							</div>
							<div class="flex flex-wrap gap-2">
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Java</span>
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Python</span>
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">SQL</span>
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Web
									Development</span> <span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">React.js</span>
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Node.js</span>
								<span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Cloud
									Computing</span> <span
									class="px-4 py-2 bg-slate-50 border border-slate-100 text-slate-700 text-sm font-bold rounded-full hover:bg-primary hover:text-white hover:border-primary transition-all cursor-default">Agile
									Methodology</span>
							</div>
						</section>
					</div>
				</div>
				<footer class="mt-12 py-8 border-t border-slate-200 text-center">
					<p
						class="text-xs font-medium text-slate-400 tracking-wide uppercase">©
						2024 CareerLink University Placement Cell</p>
					<div class="mt-2 flex justify-center gap-4 text-xs text-slate-400">
						<a class="hover:text-primary transition-colors" href="#">Terms
							of Service</a> <a class="hover:text-primary transition-colors"
							href="#">Privacy Policy</a> <a
							class="hover:text-primary transition-colors" href="#">Help
							Desk</a>
					</div>
				</footer>
			</div>
		</main>
	</div>

</body>
</html>