#! /usr/bin/awk -f
{
    numbers[NR]=$0
}
END {
  num_len=length(numbers)
  for(i=1; i<=num_len; i++){
    line_len=length(numbers[i])
    if(large_len<line_len){
      large_len=line_len
    }
  }
  for(i=1; i<=num_len; i++){
    line_len=length(numbers[i])
    line_len=large_len-line_len
    for(z=1; z<=line_len; z++){
      zeros=zeros"0"
    }
    numbers[i]=zeros""numbers[i]
    zeros=""
  }
  for(i=1; i<=length(numbers);i++){
    split(numbers[i],digits,"")
    no_of_digits=length(digits)
    for(s=1;s<=no_of_digits;s++){
      sum_of_digits[s]+=digits[s]
    }
  }
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

