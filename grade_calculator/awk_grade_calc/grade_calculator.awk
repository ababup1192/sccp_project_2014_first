awk -F ',' 'BEGIN{sum=0} NR>1{sum=sum+$1+$2+$3+$4+$5} END{print sum;print sum/((NR-1)*5)}' grade.csv
