public class prob2 {
	public static void main (String[] args){
		int fib = 1;
		int old1 = 0;
		int old2 = 1;
		int count = 0;
		while (fib < 4000000){
			fib = old1 + old2;
			if (fib % 2 == 0) {count = count + fib;}
			old1 = old2;
			old2 = fib;
		}
		System.out.println(count);
	}
}
