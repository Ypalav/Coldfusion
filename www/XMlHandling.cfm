<cffile action="read" file="#ExpandPath("./order.xml")#" variable = "myxml" />
<cfset mydoc = XmlParse(myxml)/>
