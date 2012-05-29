public class prob28 {
	public static void main (String[] args){
		int[][] square = new int[1001][1001];
		int count = 1001*1001;
		int bottom = 1000;
		int top = 0;
		int left = 0;
		int right = 1000;

		//while loop to generate spiral
		while (count > 0){
			//moving left
			for (int j = right; j >= left; j--){
				square[top][j] = count;
				count--;
			}
			top++;

			//moving down
			for (int k = top; k <= bottom; k++){
				square[k][left] = count;
				count--;
			}
			left++;

			//moving right
			for (int l = left; l <= right; l++){
				square[bottom][l] = count;
				count--;
			}
			bottom--;
			
			//moving up
			for (int m = bottom; m >= top; m--){
				square[m][right] = count;
				count--;
			}
			right--;
		}

		int sum = 0;
		for (int i = 0; i < 1001; i++){
			sum = sum + square[i][i] + square[1000-i][0+ i];
		}
		
		//remove the double counted center square
		sum = sum - square[500][500];
		System.out.println("the sum is " + sum);
	}
}
