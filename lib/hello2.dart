void main(){
  sayHello("World",text2: "Android");
  sayHello("Flutter");
}

void sayHello(String text, {String text2 = 'iOS'}){
  print("Hello ${text.toUpperCase()} $text2");
}