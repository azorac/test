#Globals
users=("" "" "") #set accounts to be searched
uniqLogValues=()
valuesWithSmartCardNotSet=()
searchString=""
## Get uniq values set for this atribute from elastic
curl #someRestAPI

#Transform results to array
uniqLogValues=() #set to transformed results

#Mask for smartCard
mask=0x40000
for i in "${uniqLogValues[@]}"
do
    if (( (mask & $i) != mask))
    then
      valuesWithSmartCardNotSet+=($i)
    fi
done

#####    
#Create searchString based on below values
#######
#valuesWithSmartCardNotSet
#users

###
# Run new search
curl #someRestAPI + searchString
