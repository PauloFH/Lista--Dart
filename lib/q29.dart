//Paulo Roberto Fernandes Holanda
//Construa um programa que receba duas strings, s1 e s2, e 
//retorne true se s2 for um anagrama de s1. Exemplos de anagrama: 
//PATO, PATO, TOPA e OPTA.
void q29() {
  print(anagrama("PATO", "ATOP"));    
  print(anagrama("RATO", "TARA"));    
  print(anagrama("PATO", "OPTA"));   
  print(anagrama("OVO", "UVA")); 
}

String anagrama(String s1, String s2) {
  if (s1.length != s2.length) {
    return " é falso";
  }
  List<String> charsS1 = s1.split('');
  List<String> charsS2 = s2.split('');
  charsS1.sort();
  charsS2.sort();
  for (int i = 0; i < charsS1.length; i++) {
    if (charsS1[i] != charsS2[i]) {
      return " é falso";
  
    }
  }

    return " é verdade";
  }

