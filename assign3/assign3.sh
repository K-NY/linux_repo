#set -x
#!/bin/sh
 
if [ -z $1 ] || [ -z $2 ] ;then # 입력값이 null 인치 체크
     echo "Invalid input"
     exit 1
fi
 
num1=$1
num2=$2
 
i=1
j=1
 
 
 if [ $num1 -eq $num1 ] 2>/dev/null ; then # 입력된 문자1가 숫자인지 문자인지 판단
 
 
     if [ $num1 -le 0 ] ;then #number 맞을경우 음수인지 아닌지 판단 
         echo "Input must be greater than 0"
     else
         if [ $num2 -eq $num2 ] 2>/dev/null ; then #  입력된 문자2 가 숫자인지 문자인지 판단
             if [ $num2 -le  0 ] ; then #  숫자가 맞을경우 음수인지 아닌지 판단 
                  echo "Input must be greater than 0"
              else
                  while [ $i -le $num1 ]
                  do
                      j=1
                      while [ $j -le $num2 ]
                      do
                          num=$(($i * $j))
                          echo -n $i"*"$j"="$num"   " 
                          j=$(($j+ 1))
  
                      done
                      i=$(($i + 1))
                      echo ""
                  done
              fi
  
          else
              echo "Invalid input"
  
          fi
  
      fi
  
 fi
