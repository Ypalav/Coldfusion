<cfparam name="form.submitted" default="0" />
<cfparam name="form.contactname" default="" />
<cfparam name="form.email" default="" />
<cfparam name="form.message" default="" />

<cfscript>
	contactInfo = {address='Chicago', phonenumber='3125208697', email='ypalav@aains.com'};
</cfscript>
<cfset utilities = CreateObject('cfc.utilities') />
<cfimport taglib = "customTags/" prefix = "layout">
<layout:page section="contact">
		<!-- Content Start -->

		<!--Card  -->
		<div id="content">
			<div class="card-pattern">
				<!-- contact -->
				<div id="contact">
					<div class="clr">
						<div class="top-bg1">
							<div class="top-left">
								<div><h1>Contact</h1></div>
							</div>
						</div>
						<div class="clr">
							<div class="pat-bottomleft">&nbsp;</div>
							<div class="pat-bottomright">&nbsp;</div>
						</div>
					</div>
					<div class="clr">
						<div class="clr">
							<h6>
								<span>Ready to improve your online business presence?</span><br />
								Use this form to tell me about your project goals and needs. We will be in touch within 24 hours.
							</h6>
						</div>
						<div class="clr hline">&nbsp;</div>
						<div class="left">
							<div class="clr">
								<div id="respond">
									<h2>Drop me a line</h2>
									<p>Your email address will not be published. Required fields are marked *</p>
									<!-- Message Output -->

									<cfif form.submitted>
											<cfset ok = true>

											<cfif NOT len(trim(form.contactname))>
												<cfset ok = false />
											</cfif>

											<cfif NOT len(trim(form.email))>
												<cfset ok = false />
											</cfif>

											<cfif NOT len(trim(form.message))>
												<cfset ok = false />
											</cfif>

											<cfif !ok>
												<p>You did not provide all the information!</p>
											<cfelse>
												<p>Form submitted successfully</p>
											</cfif>

									</cfif>
									<div id="post_message" class="post_message"></div>

									<div class="boxBody">
										<div class="desc">
											<cfoutput>

											<form id="form" action="contact.cfm" method="post">
												<div>
													<label>Name <span class="font-11">(required)</span></label>
													<input name="contactname" type="text" class="required" value = #form.contactname#>
												</div>
												<div>
													<label>E-mail <span class="font-11">(required)</span></label>
													<input name="email" type="text" class="required email" value = #form.email#>
												</div>
												<div class="textarea">
													<label>Message <span class="font-11">(required)</span></label>
													<textarea name="message" rows="6" cols="60" class="required">#form.message#</textarea>
												</div>
												<div>
													<input id="submitBtn" value="Submit"  name="submit" type="submit" class="submitBtn" />
												</div>
												<input type ="hidden" name="submitted" value="1" />
											</form>
											</cfoutput>
										</div><!--END desc show-->
									<!--END desc-->
									</div>
									<div  class="clr"></div>
								</div>
							</div>
						</div>
					</div>
					<!--//left end //-->
					<div class="right">
						<div class="clr">
							<!-- Personal Information -->
							<h2>Contact Info</h2>
							<div class="clr">
								<div class="clr"><div class="input-box1">Address</div><span><cfoutput>
									#contactInfo.address#
								</cfoutput></span></div>
								<div class="clr"> &nbsp;</div>
								<div class="clr"><div class="input-box1">Phone</div><span><cfoutput>
									#contactInfo.phonenumber#
								</cfoutput></span></div>
								<div class="clr"><div class="input-box1">E-mail</div><span><a href="##"><cfoutput>
									#utilities.convertStringToASCII(contactInfo.email)#
								</cfoutput></a></span></div>
							</div>
							<div class="clr">
								<div class="pad-top5"></div>
								<h2>Latest Tweet</h2>
								<div class="twitter clr">
									<!-- Twitter Output -->
									<ul>
										<li>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div><!--//clr end //-->
					<div class="clr"></div>
				</div><!-- contact end -->

</layout:page>
