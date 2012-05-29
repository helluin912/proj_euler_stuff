//Project Euler problem 19
//find the # of Sundays that fell on the 1st between Jan 1, 1901 and Dec 31, 2000

public class prob19 {
/*	public static int monthcalc (int month){
		int mval;
		if (month == 1) mval = 0;
		if (month == 2) mval = 3;
		if (month == 3) mval = 3;
		if (month == 4) mval = 6;
		if (month == 5) mval = 1;
		if (month == 6) mval = 4;
		if (month == 7) mval = 6;
		if (month == 8) mval = 2;
		if (month == 9) mval = 5;
		if (month == 10) mval = 0;
		if (month == 11) mval = 3;
		if (month == 12) mval = 5;
		return mval;
	}
*/
	public static void main (String[] args){
		int count = 0;
		int mval = 0;
		double calc =0;
		int C, L;
		for (int year = 1; year <= 100; year++){
			for (int month = 1; month <= 12; month++){
				if (month == 1) mval = 11;
				if (month == 2) mval = 12;
				if (month == 3) mval = 1;
				if (month == 4) mval = 2;
				if (month == 5) mval = 3;
				if (month == 6) mval = 4;
				if (month == 7) mval = 5;
				if (month == 8) mval = 6;
				if (month == 9) mval = 7;
				if (month == 10) mval = 8;
				if (month == 11) mval = 9;
				if (month == 12) mval = 10;
				//calc formula comes from dad's The Theory of Numbers Book
				if (year == 100) C = 20;
				else C = 19;
				if (year % 4 == 0) L = 1;
				else L = 0;
				calc = 1 + Math.floor((2.6* mval) -.2) + year + Math.floor(year/4) + Math.floor(C/4) - (2*C) - ((1 + L)*(Math.floor(mval / 11)));
				if (calc % 7 == 0) count++; 
				calc = 0;
			}
		}
		System.out.println("number of sundays on the 1st is : " + count);

	/*	for (int year = 1901; year <= 1910; year++)
		{
			System.out.print("the year is " + year);
			if (year % 4 == 0) System.out.println(" it is a leap yr");
			else System.out.println(" its not a leap yr");
		}
		for (int day = 0; day < 7; day++)
		{
			System.out.println("the day is " + day);
		}*/
	}
}
