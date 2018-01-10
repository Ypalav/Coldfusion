<cfset mySkills = "Coldfusion, HTML5, CSS3, MySQL, JQuery" />

<cfimport taglib = "customTags/" prefix = "layout">
<layout:page section="resume">

		<!-- Content Start -->

		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
			<!-- resume -->
				<div id="resume">
					<div class="clr">
						<div class="top-bg1">
							<div class="top-left">
								<div><h1>Resume</h1></div>
							</div>
						</div>
						<div class="clr">
							<div class="pat-bottomleft">&nbsp;</div>
							<div class="pat-bottomright">&nbsp;</div>
						</div>
					</div>
					<div class="clr">
						<h6>
							<span>Experienced developer with over 10 years track record.</span> <br />
							Professional web development and specializes in developing clean, effective and smart websites.
						</h6>
					</div>
					<div class="clr hline">&nbsp;</div>
					<div class="resume-top">
						<div class="clr">
							<div class="left">
								<!-- Resume Listings -->
								<!-- Resume Listing Type -->
								<h2>Work Experience <span>&nbsp;</span></h2>
								<!-- Start Resume Listing -->
								<h5>Senior Developer - Google Inc <span>2010 to present </span> </h5>
								<p>Lorem ipsum dolor sit amet, habitasse pretium dolor sociis. Nulla et facilisis interdum elit amet erat, consectetuer condimentum eaque, ante maecenas Suspendisse libero diam.</p>
								<!-- End Resume Listing -->
								<h5>Front-End Developer -  Apple Corp<span>06-2006 to 12-2009</span></h5>
								<p>Lorem ipsum dolor sit amet, habitasse pretium dolor sociis. Nulla et facilisis interdum elit amet erat, consectetuer condimentum eaque, ante maecenas.  </p>

								<h2>Education<span class="resume-line">&nbsp;</span></h2>
								<div  class="social-list1">
									<ul>
										<li>
											<h5>The University of Texas</h5><span>1997-2002</span>
											<p> Master of Computer Applications (MCA).Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit amet ligula non lectus.consectetur adipiscingVivamus sit amet. </p>
										</li>
										<li>
											<h5>Institue of Design</h5><span>1994-1997</span>
											<p>Lorem ipsum dolor sit amet, adipiscing elit. egestas.Vivamus sit amet ligula non lectus cursus egestas amet ligula non lectus cursus egestas.</p>
										</li>
									</ul>
								</div>
							</div>
							<div class="right" >
								<h2>My Skillset</h2>
								<!-- Skillset Graphic -->
								<div id="diagram" align="center">
									<div class="get">
										<div class="arc">
											<span class="text">HTML5</span>
											<input name="hidden" type="hidden" class="percent" value="80" />
											<input name="hidden" type="hidden" class="color" value="#93bf4f" />
										</div>
										<div class="arc">
											<span class="text">ColdFusion</span>
											<input name="hidden" type="hidden" class="percent" value="53" />
											<input name="hidden" type="hidden" class="color" value="#de6f96" />
										</div>
										<div class="arc">
											<span class="text">MySQL</span>
											<input name="hidden" type="hidden" class="percent" value="45" />
											<input name="hidden" type="hidden" class="color" value="#9bcedd" />
										</div>
										<div class="arc">
											<span class="text">JQuery</span>
											<input name="hidden" type="hidden" class="percent" value="95" />
											<input name="hidden" type="hidden" class="color" value="#aeaeae" />
										</div>
										<div class="arc">
											<span class="text">CSS3</span>
											<input name="hidden" type="hidden" class="percent" value="80" />
											<input name="hidden" type="hidden" class="color" value="#2caeb5" />
										</div>
									</div>
								</div>
								<!-- Skills Listing -->
								<div class="skills">
									<ul>
										<cfoutput>
											<cfloop list="mySkills" index="skill">
												<li class="#skill#" id="#skill#">
													#skill#
												</li>
											</cfloop>
										</cfoutput>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="clr"></div>
				</div> <!--resume end -->

</layout:page>
