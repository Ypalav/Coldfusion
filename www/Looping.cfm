
//looping over an array
<cfset myArray = ["A", "B", "C", "D"] />
<cfloop from="1" to="#arrayLen(myArray)#" index="i">
  <cfoutput>
    #i#: #myArray[i]#
    <br />
  </cfoutput>
</cfloop>


//shorthand for looping over an array
<cfloop array="#myArray#" index="item">
  <cfoutput>
  #item#<br/>
</cfoutput>
</cfloop>

//looping over a List<br/>
<cfset myList = 'Jeff, John, Steve, Julianne' />
<cfloop list="#myList#" index="item">
<cfoutput>
  #item#<br/>
</cfoutput>
</cfloop>

//tracking index

<cfloop from="1" to="#listlen(myList)#" index="i">
  <cfoutput>
    #i#: #listGetAt(myList, i)# <br />
  </cfoutput>
</cfloop>
//using delimiters </br>

<cfset myList = "This is the last sentence" />
<cfloop list="#mylist#" index="word" delimiters=" ">
  <cfoutput>
      #word#<br />
  </cfoutput>
</cfloop>
// same iterations for array, list, collections, queries
