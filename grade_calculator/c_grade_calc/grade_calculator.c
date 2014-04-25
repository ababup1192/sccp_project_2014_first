#include <stdio.h>
#include <stdlib.h>

#define ROW 256
#define COLUMN 5
#define N 256

// Structure definition
typedef struct
{
	int jpn;	// Japanese
	int math;	// Mathematics
	int eng;	// English
	int sci;	// Science
	int soc;		// Society
} Grade;

// Prototype declaration
int read_grade_from_csv(Grade[]);
int calc_summation(int, Grade[]);
double calc_average(int, int);
void output_average(double);
void output_summation(int);

int main(){
	int row, sum;
	double ave;
	Grade grades[ROW];

	//main flow

	// input
	row = read_grade_from_csv(grades);
	// computation
	sum = calc_summation(row, grades);
	ave = calc_average(row, sum);
	// output
	output_average(ave);
	output_summation(sum);

	return 0;
}

// Return last column number
int read_grade_from_csv(Grade grades[]){
	int row = 0;
	char buff[N];
	FILE *fp;

	if ((fp = fopen("grade.csv", "r")) == NULL) {
		printf("file open error!!\n");
		exit(EXIT_FAILURE);	/* return EXIT_FAILURE SIGNAL */
	}

	// This is a first row. Read a dummy data.
	fgets(buff, 200, fp);

	while(fscanf(fp, "%d, %d, %d, %d, %d",
		 &grades[row].jpn, &grades[row].math, &grades[row].eng, &grades[row].sci, &grades[row].soc)
			!= EOF){
		row++;
	}
	fclose(fp);

	return row;
}

int calc_summation(int row, Grade grades[]){
	int sum = 0, i;

	for(i = 0; i < row; i++){
		sum += (grades[i].jpn + grades[i].math + grades[i].eng + grades[i].sci + grades[i].soc);
	}

	return sum;
}

double calc_average(int row, int sum){
	return sum / (double) (row * COLUMN);
}

void output_average(double ave){
	printf("Average = %f\n", ave);
}

void output_summation(int sum){
	printf("Summation = %d\n", sum);
}
