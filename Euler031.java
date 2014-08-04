
public class p31 {
	public static void main(String[] args){
		int goal = 200;
		int ways = 0;
		for (int a = 0; a<=goal; a+= 200){
			for (int b=a; b<=goal; b+=100){
				for (int c=b;c<=goal;c+=50){
					for (int d=c; d<=goal;d+=20){
						for (int e=d; e<=goal; e+=10){
							for (int f=e; f<=goal; f+=5){
								for (int g=f; g<=goal; g+=2){
											ways++;
								}
							}
						}
					}
				}
			}
		}
		System.out.println(ways);
	}
}
