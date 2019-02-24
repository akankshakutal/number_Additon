#! /usr/bin/awk -f

{
  split($0,digits,"")
  for(i=1; i<=length(digits);i++){
    sum_of_digits[j]+=digits[j]
  }
}

END {
  for(i=length(sum_of_digits);i>0;i--){
    len=length(sum_of_digits[i])
    number_string=sum_of_digits[i]
    sum_of_digits[i]=substr(number_string,len)
    carry_digits=substr(number_string,1,len-1)
    sum_of_digits[i-1]+=int(carry_digits)
  }

  printf carry_digits
  lengthofDigits= length(sum_of_digits)
  
  for(i=1;i<=lengthofDigits; i++){
    printf sum_of_digits[i]
  }
}  
